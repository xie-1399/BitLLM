
import torch
from torch import nn
from typing import Callable, Optional
from sw.bit_linear import BitLinear

# the feedforward layer is (BitLinear + Gelu + BitLinear)

def default(val, d):
    return val if val is not None else d

def init_zero_(tensor):
    nn.init.constant_(tensor, 0.0)

class BitFeedForward(nn.Module):
    """
    BitFeedForward module performs feed-forward operations on the input tensor.

    Args:
        dim (int): The input dimension.
        dim_out (int, optional): The output dimension. If not provided, it is set to the input dimension.
        mult (int, optional): The multiplier for the inner dimension. Default is 4.
        glu (bool, optional): Whether to use Gated Linear Unit (GLU) activation. Default is False.
        glu_mult_bias (bool, optional): Whether to apply bias to the GLU activation. Default is False.
        swish (bool, optional): Whether to use Swish activation. Default is False.
        relu_squared (bool, optional): Whether to use squared ReLU activation. Default is False.
        post_act_ln (bool, optional): Whether to apply Layer Normalization after activation. Default is False.
        dropout (float, optional): The dropout probability. Default is 0.0.
        no_bias (bool, optional): Whether to exclude bias in linear layers. Default is False.
        zero_init_output (bool, optional): Whether to initialize the last linear layer to 0. Default is False.
    """

    def __init__(
        self,
        dim: int,
        dim_out: Optional[int] = None,
        mult: int = 4,
        glu: bool = False,
        glu_mult_bias: bool = False,
        swish: bool = False,
        post_act_ln: bool = False,
        dropout: float = 0.0,
        no_bias: bool = False,
        zero_init_output: bool = False,
        *args,
        **kwargs
    ):
        super().__init__()
        inner_dim = int(dim * mult)
        dim_out = default(dim_out, dim)

        if swish:
            activation = nn.SiLU()
        else:
            activation = nn.GELU()

        project_in = nn.Sequential(
            BitLinear(dim, inner_dim, bias=not no_bias, *args, **kwargs), activation
        )

        self.ff = nn.Sequential(
            project_in,
            nn.LayerNorm(inner_dim) if post_act_ln else None,
            nn.Dropout(dropout),
            BitLinear(inner_dim, dim_out, bias=not no_bias, *args, **kwargs),
        )

        # init last linear layer to 0
        if zero_init_output:
            init_zero_(self.ff[-1])

    def forward(self, x):
        """
        Forward pass of the BitFeedForward module.

        Args:
            x (torch.Tensor): The input tensor.

        Returns:
            torch.Tensor: The output tensor.
        """
        return self.ff(x)