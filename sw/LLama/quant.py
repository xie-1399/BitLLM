import math
import torch
from torch import nn

def Counter(tensor):
    total =  tensor.numel()
    nonZeroes = torch.count_nonzero(tensor).item()
    zeroes = total - nonZeroes
    return zeroes/total,nonZeroes/total

def weight_quant(weight,num_bits = 1):
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

def Outlier(tensors,num_bits = 4):
    shape_tensors = tensors.reshape(-1)
    greater_than_15 = (shape_tensors > 63).sum().item()
    less_than_neg_16 = (shape_tensors < -64).sum().item()
    return (greater_than_15 + less_than_neg_16)/shape_tensors.numel()


InferenceOnly = True
BitlinearWeightSparseList = []
BitlinearActivationSparseList = []
Outliers_act = []

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
        s = 1 / self.weight.abs().mean().clamp(min=1e-5)
        # Qp = 2 ** (self.input_bits - 1) - 1
        # Qn = -2 ** (self.input_bits - 1)
        # s_input = Qp / input.abs().max(dim=-1, keepdim=True).values.clamp(min=1e-5)

        # quant_input_temp = (input * s).round() if(InferenceOnly) else input + (activation_quant(input, self.input_bits) - input).detach()
        quant_input = input + (activation_quant(input, self.input_bits) - input).detach()
        # print(quant_input_temp)
        # Outliers_act.append(Outlier(quant_input_temp))
        # quant_input = quant_input_temp.clamp(Qn, Qp) / s_input if(InferenceOnly) else quant_input_temp
        quant_weight = weight_quant_off(self.weight) if(InferenceOnly) else self.weight + (weight_quant(self.weight, self.weight_bits) - self.weight).detach()

        # w_s = Counter(quant_weight)
        # a_s = Counter(quant_input)
        # BitlinearWeightSparseList.append(w_s[0])
        # BitlinearActivationSparseList.append(a_s[0])
        # print(BitlinearSparseList)

        out = nn.functional.linear(quant_input, quant_weight)
        out = out / s if(InferenceOnly) else out
        if not self.bias is None:
            out += self.bias.view(1, -1).expand_as(out)
        return out