import math
import torch
from torch import nn

def weight_quant(weight,num_bits=1):
    dtype = weight.dtype
    weight = weight.float()
    s = 1 / weight.abs().mean().clamp(min=1e-5)
    result = (weight * s).round().clamp(-1, 1) / s
    return result.type(dtype)

# offline quan the linear weight
def weight_quant_off(weight,num_bits = 1):
    dtype = weight.dtype
    weight = weight.float()
    s = 1 / weight.abs().mean().clamp(min=1e-5)
    result = (weight * s).round().clamp(-1, 1)
    return result.type(dtype)


def activation_quant(x, num_bits=8):
    dtype = x.dtype
    x = x.float()
    Qn = -2 ** (num_bits - 1)
    Qp = 2 ** (num_bits - 1) - 1
    s = Qp / x.abs().max(dim=-1, keepdim=True).values.clamp(min=1e-5)
    result = (x * s).round().clamp(Qn, Qp) / s
    return result.type(dtype)

InferenceOnly = True


class BitLinear(nn.Linear):

    def __init__(self,
                 *kargs,
                 weight_bits=1,
                 input_bits=8,
                 **kwargs
                 ):
        super(BitLinear, self).__init__(*kargs, **kwargs)
        """
        RMSNorm is placed outside BitLinear
        """
        self.weight_bits = weight_bits
        self.input_bits = input_bits

    def forward(self, input):
        # s = 1 / self.weight.abs().mean().clamp(min=1e-5)
        quant_input = input + (activation_quant(input, self.input_bits) - input).detach()
        quant_weight = self.weight if(InferenceOnly) else self.weight + (weight_quant(self.weight, self.weight_bits) - self.weight).detach()
        out = nn.functional.linear(quant_input, quant_weight)
        out = out if(InferenceOnly) else out  # out = out / s if(InferenceOnly) else out
        if not self.bias is None:
            out += self.bias.view(1, -1).expand_as(out)
        return out