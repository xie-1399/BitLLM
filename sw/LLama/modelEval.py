import numpy as np
import torch
from accelerate import infer_auto_device_map

from safetensors import safe_open
from safetensors.torch import save_file

from sw.LLama.bit158_llama import BitnetForCausalLM, AttnLinearTimeList,LayerTimeList,MlpTimeList,AttentionTimeList
from sw.LLama.quant import weight_quant,weight_quant_off
import matplotlib.pyplot as plt

# the 3B Model sparse radio is 0.3728565638906548 (26 layers)
# the large model sparse radio is 0.3664140039020114
# the xl model sparse radio is 0.37058823026780996 (24 layers)

def SparseRatio():
    #
    #
    # "../Model/model-00001-of-00003.safetensors","../Model/model-00002-of-00003.safetensors","../Model/model-00003-of-00003.safetensors"
    fileList = ["../Model/large/model.safetensors"]
    # "../Model/model-00001-of-00003.safetensors","../Model/model-00002-of-00003.safetensors","../Model/model-00003-of-00003.safetensors"
    #"../Model/tiny/model-00001-of-00002.safetensors","../Model/tiny/model-00002-of-00002.safetensors"
    # pthFile = "../Model/Bit158Net.pth"
    # net = torch.load(pthFile)
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
                    print(str(k)  + " : " + str(f.get_tensor(k).dtype))
                    tensors = weight_quant_off(f.get_tensor(k))
                    # print(tensors)
                    nonZero = torch.count_nonzero(tensors).item() # +0 and -0 will not be counted
                    nonZerosum += nonZero
                    sums += tensors.numel()
                    print("spare ratio:" + str(1 - nonZero / tensors.numel()))

    print("nonZeroSum:" + str(nonZerosum))
    print("Sum:" + str(sums))
    print("the spare ratio:" + str(1 - nonZerosum / sums))

    # print("=========pth radio ==========")
    # sums = 0
    # nonZerosum = 0
    # for key,value in net.items():
    #     print(key,value.size(),sep="  ")
    #     tensors = weight_quant(value)
    #     nonZero = torch.count_nonzero(tensors).item()  # +0 and -0 will not be counted
    #     nonZerosum += nonZero
    #     sums += tensors.numel()
    # print("nonZero:" + str(nonZero))
    # print("Sum:" + str(sums))
    # print("the spare ratio:" + str(1 - nonZero / sums))

# the offline Quan Model weight to {-1,0,+1}

def offlineQuanModel(filePath,Name):
    # fileList = ["./Model/model-00001-of-00003.safetensors","./Model/model-00002-of-00003.safetensors","./Model/model-00003-of-00003.safetensors"]
    bitLayersParameters = "proj" # no quan for the norm
    tensors = {}

    with safe_open(filePath,framework="pt") as f:
        for k in f.keys():
            if (bitLayersParameters in str(k)):
                tensors[k] = weight_quant_off(f.get_tensor(k))
            else:
                tensors[k] = f.get_tensor(k)
        print("saving...")
        save_file(tensors,Name, metadata={"format": "pt"})
        print("Finish offline Quan, Please check It...")

def SafetensorsRead(filePath):
    with safe_open(filePath, framework="pt", device=0) as f:
        for k in f.keys():
            print(str(k) + " : " + str(f.get_tensor(k).dtype))
            print(f.get_tensor(k))

# get the time log of the BitLinear
def BitlinearTime(length):
    tensor = torch.rand(length).cuda().long().view(1, -1)
    modelpath = "../Model"
    cuda_list = '0,1'.split(',')
    memory = '20GiB'
    max_memory = {int(cuda): memory for cuda in cuda_list}
    model = BitnetForCausalLM.from_pretrained(
        modelpath,
        device_map='auto',
        low_cpu_mem_usage=True,
        max_memory= max_memory,
        use_flash_attention_2=False,
        torch_dtype=torch.float16,
    ).half()
    with open("time.log", "a+") as log:
        log.write(f"=====get the {length} linear calculate time=====\n")
        model.eval()
        with torch.no_grad():
            model(tensor)
        log.write("Attn linear time list:" + str(AttnLinearTimeList) + "\n")
        log.write("Attn linear total time:" + str(sum(AttnLinearTimeList)) + "\n")
        log.write("Attention time list:" + str(AttentionTimeList) + "\n")
        log.write("Attention total time:" + str(sum(AttentionTimeList)) + "\n")
        log.write("Mlp time list:" + str(MlpTimeList) + "\n")
        log.write("Mlp total time:" + str(sum(MlpTimeList)) + "\n")
        log.write("Layer time list:"+ str(LayerTimeList) + "\n")
        log.write("layer total time:" + str(sum(LayerTimeList)) + "\n")
        log.write("Bitlinear time radio is:" + str((sum(MlpTimeList) + sum(AttnLinearTimeList))/sum(LayerTimeList)) + "\n")
        log.write("Attention time radio is:" + str((sum(AttentionTimeList))/sum(LayerTimeList)) + "\n")


def drawtime():
    x= range(7)
    x_label = ["256","512","1024","2048","4096","5120","6144"]
    categories = ["Others", "Attention","BitLinear"]
    width = 0.60
    data = [0.6120689441890192,0.620681038472746,0.6987713301829265,0.7488821768393619,0.8262929388958928,0.7835988638078791,0.6205734550632847]
    attn = [0.6120689441890192 + 0.21920747170278126,0.620681038472746 + 0.20072690180949113,0.6987713301829265 + 0.1664378552708001,0.7488821768393619 + 0.1291368354089899,0.8262929388958928 + 0.10917548304926593,0.7835988638078791 + 0.0783966505855872,0.3036328651471473 + 0.6205734550632847]
    total = [1,1,1,1,1,1,1]
    fig,ax = plt.subplots()
    ax.bar(x, total,width = width,facecolor = "blue")
    ax.bar(x, attn, width = width,facecolor = "magenta")
    ax.bar(x, data, width = width, facecolor="green")
    ax.grid(ls="--", alpha=0.5)
    ax.set_xticks(x,x_label)
    # ax.set_title("the BitLinear time ratio")
    ax.set_ylabel("radio")
    ax.set_xlabel("sequence length")
    ax.legend(categories, loc='upper center', bbox_to_anchor=(0.5, 1.1), ncol=3)
    plt.savefig('./time.png')
    plt.show()


def get_weight(filePath,name):
    with safe_open(filePath,framework="pt") as f:
        for k in f.keys():
            if(k == name):
                print(str(k) + " : ")
                tensor = f.get_tensor(k)
                return tensor

                # nonZero = torch.count_nonzero(tensor).item()
                # print(tensor)
                # print("size:"+ str(tensor.size()))
                # print("nonZero:" + str(nonZero))
                # print("radio:"+ str(nonZero/ (3200 * 8640)))


if __name__ == '__main__':

    # SparseRatio()
    # offlineQuanModel("./Model/raw/model-00001-of-00003.safetensors","./Model/model-00001-of-00003.safetensors")
    # SafetensorsRead("./Model/model-00003-of-00003.safetensors")
    # BitlinearTime(5120) #256/512/1024/1536/2048/4096/5120/6144
    drawtime()
    # get_weight("../Model/model-00001-of-00003.safetensors","model.layers.0.mlp.down_proj.weight")