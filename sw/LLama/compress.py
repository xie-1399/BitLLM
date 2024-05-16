# the different methods to evaluate the compress way

import torch

from sw.LLama.modelEval import get_weight

def rawSize(tensor):
    return tensor.numel()

def getindices(tensor):
    return torch.nonzero(tensor)

def valueSize(tensor):
    return torch.count_nonzero(tensor).item()

def COO(indices,tensor,PositionSize):
    return valueSize(tensor) + indices.numel() * PositionSize

def CSC():
    pass

def CSR():
    pass


if __name__ == '__main__':
    tensor = get_weight("../Model/model-00001-of-00003.safetensors","model.layers.0.mlp.down_proj.weight")
    indices = getindices(tensor)

    PositionSize = 8
    print("raw size bit:" + str(rawSize(tensor)))
