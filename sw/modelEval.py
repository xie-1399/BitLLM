import numpy as np
import torch

from safetensors import safe_open
from sw.bit158_linear import *

# the 3B Model sparse radio is 0.9982137309157462 (26 layers)
# the large model sparse radio is 0.9977765981061959
# the xl model sparse radio is 0.9939744069511707 (24 layers)

def load_file():
    # "./Model/model-00001-of-00003.safetensors","./Model/model-00002-of-00003.safetensors","./Model/model-00003-of-00003.safetensors"
    # "./Model/large/model.safetensors"

    fileList = ["./Model/tiny/model-00001-of-00002.safetensors","./Model/tiny/model-00002-of-00002.safetensors"]
    bitLayersParameters = "proj"
    sums = 0
    nonZerosum = 0
    for f in fileList:
        with safe_open(f,framework="pt",device=0) as f:
            # tensor_slice = f.get_slice("model.layers.0.self_attn.k_proj.weight")
            # vocab_size, hidden_dim = tensor_slice.get_shape()
            # tensor = tensor_slice[:, :hidden_dim]
            for k in f.keys():
                if(bitLayersParameters in str(k)):
                    print( str(k)  + " : " + str(f.get_tensor(k).dtype))
                    tensors = weight_quant(f.get_tensor(k))
                    # print(tensors)
                    nonZero = torch.count_nonzero(tensors).item() # +0 and -0 will not be counted
                    nonZerosum += nonZero
                    sums += tensors.numel()

    print("nonZero:" + str(nonZero))
    print("Sum:" + str(sums))
    print("the spare radio:" + str(1 - nonZero / sums))



if __name__ == '__main__':
    load_file()