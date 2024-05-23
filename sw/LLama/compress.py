# the different methods to evaluate the compress way

import torch

from sw.LLama.modelEval import get_weight

def rawSize(tensor):
    return tensor.numel()

def getindices(tensor):
    return torch.nonzero(tensor)

def valueSize(tensor):
    return torch.count_nonzero(tensor).item()

# compress benchmark size
def bench(tensor):
    size = tensor.numel()
    rawBytes = size / 5
    print("raw bytes is:" + str(rawBytes) + " bytes")
    return rawBytes

def continousCompress(tensor):
    tensor = tensor.reshape(-1)
    shape = tensor.numel()
    for idx in range(shape):
        elem = tensor(idx)
        # if(elem)


if __name__ == '__main__':
    tensor = get_weight("../Model/model-00001-of-00003.safetensors","model.layers.0.mlp.down_proj.weight")
    indices = getindices(tensor)

    bench(tensor)
    continousCompress(tensor)