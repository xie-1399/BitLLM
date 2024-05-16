import math
import argparse
import torch
import random

from eval_utils import get_test_dataset
from sw.LLama.bit158_llama import BitnetForCausalLM
from tqdm import tqdm

# the wikitext2 PPL is : 9.981385466240686
# the c4 PPL is : 9.777814289493739
# the ppl offline weight can also work

from sw.LLama.tokenization_bitnet import BitnetTokenizer
torch.set_grad_enabled(False)

parser = argparse.ArgumentParser()
parser.add_argument('--seed', default=0, type=int)
parser.add_argument('--hf_path', default='1bitLLM/bitnet_b1_58-3B', type=str)
parser.add_argument('--seqlen', default=2048, type=int)

modelpath = "../Model"

def calulate_loss(model, input, loss_fct):
    output = model(input,
                    use_cache=False,
                    output_hidden_states=False,
                    output_attentions=False)[0]
    shift_logits = output[:, :-1, :].contiguous()
    shift_labels = input[:, 1:]
    loss = loss_fct(shift_logits.view(-1, shift_logits.size(-1)), shift_labels.view(-1))
    return loss


def main(args):
    datasets = ['wikitext2'] #'c4' ,
    model = BitnetForCausalLM.from_pretrained(
        modelpath,
        device_map='auto',
        low_cpu_mem_usage=True, 
        use_flash_attention_2=False,
        torch_dtype=torch.float16,
    ).half()
    print(model)
    # model = torch.nn.DataParallel(model)
    tokenizer = BitnetTokenizer.from_pretrained(modelpath, use_fast=False)
    loss_fct = torch.nn.CrossEntropyLoss(reduction="sum").cuda()

    ppl = []
    for dataset in datasets:
        testdata = get_test_dataset(dataset, tokenizer, seqlen=args.seqlen)
        acc_loss, count = 0.0, 0
        progress = tqdm(range(len(testdata)))
        for ii in progress:
            input = torch.Tensor(testdata[ii]).long().cuda().view(1, -1)
            print("size:"+ str(input.size()))
            loss = calulate_loss(model, input, loss_fct)
            count += (input.size(-1) - 1)
            acc_loss += loss.item()
            progress.set_description(f"avg_loss = {acc_loss/ count / math.log(2)}")

        avg_loss = acc_loss / count / math.log(2)
        ppl.append(2 ** avg_loss)
        print("{} PPL: {}".format(dataset, ppl[-1]))

    print(ppl)
    print("Avg PPL:", sum(ppl) / len(ppl))


if __name__ == '__main__':
    torch.set_grad_enabled(False)
    args = parser.parse_args()
    random.seed(args.seed)
    torch.random.manual_seed(args.seed)
    main(args)