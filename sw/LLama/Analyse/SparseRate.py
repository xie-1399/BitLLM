# evaluate the sparse rate

import torch

from sw.LLama.bit158_llama import BitnetForCausalLM, SparseQueryList,SparseKeyList,SparseValueList,SparseAttnList
from sw.LLama.quant import BitlinearWeightSparseList,BitlinearActivationSparseList,Outliers_act
import matplotlib.pyplot as plt
import numpy as np

def layerSparseActivation(tensor):
    length = tensor.numel()
    modelpath = "../../Model"
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
    with open("sparse.log", "a+") as log:
        log.write(f"=====the sequence length is {length}=====\n")
        model.eval()
        with torch.no_grad():
            model(tensor)

        log.write("Bitlinear weight Sparse List:" + str(BitlinearWeightSparseList) + "\n")
        log.write("Bitlinear Activation Sparse List:" + str(BitlinearActivationSparseList) + "\n")
        log.write("Query Sparse list:" + str(SparseQueryList) + "\n")
        log.write("Key Sparse list:" + str(SparseKeyList) + "\n")
        log.write("Attn Sparse list :" + str(SparseAttnList) + "\n")
        log.write("Value Sparse list :" + str(SparseValueList) + "\n")
        log.close()
    return BitlinearWeightSparseList,BitlinearActivationSparseList,SparseQueryList,SparseKeyList,SparseAttnList,SparseValueList


def list_ava(total):
    temp = [0] * 18

    for i in range(len(total)):
      temp = list(map(lambda x, y: x + y, temp, total[i]))

    temp = [x/len(total) for x in temp]
    return temp


def layerOutlierActivation(tensor):
    length = tensor.numel()
    modelpath = "../../Model"
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
    with open("Outliers.log", "a+") as log:
        log.write(f"=====the sequence length is {length}=====\n")
        model.eval()
        with torch.no_grad():
            model(tensor)
        log.write("Outlier ratio list :" + str(Outliers_act) + "\n")
        log.close()
    return

def layerSplit(weight,activation,query,key,attn,value):
    # reorder the sequence like [WQ,act,WK,act,Wv,act,Query,Key,Attn,Value,O_proj_weight,O_proj_act,FFN1_weight,FFN1_act,FFN2_weight,FFN2_act,FFN3_weight,FFN3_act]
    Bit = 8
    total_list = []
    with open("sparse.log", "a+") as log:
        for idx in range(0,26):
            log.write(f"Layer {idx} : INT [{Bit}] \n")
            new_list = []
            weightNum = 0
            actNum = 0
            queryNum = 0
            keyNum = 0
            attnNum = 0
            valueNum = 0

            # Q K V
            new_list.append(weight[idx * 7 + weightNum])
            weightNum += 1
            new_list.append(activation[idx * 7 + actNum])
            actNum += 1
            new_list.append(weight[idx * 7 + weightNum])
            weightNum += 1
            new_list.append(activation[idx * 7 + actNum])
            actNum += 1
            new_list.append(weight[idx * 7 + weightNum])
            weightNum += 1
            new_list.append(activation[idx * 7 + actNum])
            actNum += 1

            # Attention
            new_list.append(query[queryNum])
            queryNum += 1
            new_list.append(key[queryNum])
            keyNum += 1
            new_list.append(attn[queryNum])
            attnNum += 1
            new_list.append(value[queryNum])
            valueNum += 1

            # o proj
            new_list.append(weight[idx * 7 + weightNum])
            weightNum += 1
            new_list.append(activation[idx * 7 + actNum])
            actNum += 1

            # FFN
            new_list.append(weight[idx * 7 + weightNum])
            weightNum += 1
            new_list.append(activation[idx * 7 + actNum])
            actNum += 1
            new_list.append(weight[idx * 7 + weightNum])
            weightNum += 1
            new_list.append(activation[idx * 7 + actNum])
            actNum += 1
            new_list.append(weight[idx * 7 + weightNum])
            weightNum += 1
            new_list.append(activation[idx * 7 + actNum])
            actNum += 1

            log.write(str(new_list) + "\n")
            total_list.append(new_list)
            # draw(new_list,"./4B/4B_layer",idx)

        ava_list = list_ava(total_list)
        print(ava_list)
        draw(ava_list,"./8B/8B_layer_ava",0)
        log.close()


def draw(total,prefix,id):
    # total = [0.4673611328125, 0.00125, 0.4623232421875, 0.00125, 0.54326591796875, 0.00125, 6.866455078125e-05, 7.1563720703125e-05, 0.499755859375, 0.0, 0.419036328125, 0.0971875, 0.3410425708912037, 0.01342132568359375, 0.36401927806712964, 0.01342132568359375, 0.3548863208912037, 0.33483621102792244]
    n = 9
    x = np.arange(n) + 1
    x_label = ["*WQ","*WK","*WV","Q*K","Attn*V","O_proj","FFN1","FFN2","FFN3"]
    y1 = total[::2]
    y2 = total[1::2]

    fig, ax = plt.subplots()
    categories = ["weight","activation"]
    ax.set_xticks(x,x_label)
    plt.ylim((0,1))
    # ax.set_title("the BitLinear time ratio")
    ax.set_ylabel("sparse radio")
    plt.bar(x, y1, alpha=0.9, width=0.35, label='weight')
    plt.bar(x + 0.35, y2, alpha=0.9, width=0.35, label='second', lw=1)
    plt.legend(categories, loc='upper center', bbox_to_anchor=(0.5, 1.1), ncol=3)
    plt.savefig(str(prefix) + f"{id}.png")
    plt.show()



if __name__ == '__main__':
    res = layerSparseActivation(tensor= (torch.rand(2048) * 100).cuda().long().view(1, -1))
    layerSplit(res[0],res[1],res[2],res[3],res[4],res[5])
    # total =  [0.4673611328125, 0.00125, 0.4623232421875, 0.00125, 0.54326591796875, 0.00125, 6.866455078125e-05, 7.1563720703125e-05, 0.499755859375, 0.0, 0.419036328125, 0.0971875, 0.3410425708912037, 0.01342132568359375, 0.36401927806712964, 0.01342132568359375, 0.3548863208912037, 0.33483621102792244]
    # draw(total,"8B_layer",0)
