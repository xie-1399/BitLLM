# finetune the 4b llama with wikitext2 and c4

import torch
import math
from sw.LLama.bit158_llama import BitnetForCausalLM
from sw.LLama.tokenization_bitnet import BitnetTokenizer
from eval_utils import get_train_dataset
from tqdm import tqdm
import argparse
import random
from dataclasses import dataclass, field
from transformers import (
    HfArgumentParser,
    Trainer,
    TrainingArguments,
)
from peft import (
    get_peft_model,
    LoraConfig,
    PrefixTuningConfig,
    PromptEncoderConfig,
    PromptTuningConfig,
    TaskType,
)

@dataclass
class FinetuneArguments:
    dataset_path: str = field()
    model_path: str = field()

@dataclass
class PEFTArguments:
    peft_mode: str = field(default="lora")
    lora_rank: int = field(default=8)
    num_virtual_tokens: int = field(default=32)  # Used for prompt tuning, prefix tuning and p-tuning
    mapping_hidden_dim: int = field(default=1024)

def get_peft_config(peft_args: PEFTArguments):
    if peft_args.peft_mode == "lora":
        peft_config = LoraConfig(
            task_type=TaskType.CAUSAL_LM, inference_mode=False,
            r=peft_args.lora_rank,
            lora_alpha=32, lora_dropout=0.1
        )
    elif peft_args.peft_mode == "prefix":
        peft_config = PrefixTuningConfig(
            task_type=TaskType.CAUSAL_LM,
            num_virtual_tokens=peft_args.num_virtual_tokens,
            encoder_hidden_size=peft_args.mapping_hidden_dim,
            prefix_projection=True,
        )
    elif peft_args.peft_mode == "ptuning":
        peft_config = PromptEncoderConfig(
            task_type=TaskType.CAUSAL_LM,
            num_virtual_tokens=peft_args.num_virtual_tokens,
            encoder_hidden_size=peft_args.mapping_hidden_dim,
        )
    elif peft_args.peft_mode == "prompt":
        peft_config = PromptTuningConfig(
            task_type=TaskType.CAUSAL_LM,
            num_virtual_tokens=peft_args.num_virtual_tokens,
        )
    else:
        raise KeyError(peft_args.peft_mode)
    return peft_config

def calulate_loss(model, input, loss_fct):
    output = model(input,
                    use_cache=False,
                    output_hidden_states=False,
                    output_attentions=False)[0]
    shift_logits = output[:, :-1, :].contiguous()
    shift_labels = input[:, 1:]
    loss = loss_fct(shift_logits.view(-1, shift_logits.size(-1)), shift_labels.view(-1))
    return loss


def main():
    finetune_args, peft_args, training_args = HfArgumentParser((
        FinetuneArguments,
        PEFTArguments,
        TrainingArguments,
    )).parse_args_into_dataclasses()


    print("Setup Model...")
    modelpath = "../Model"
    model = BitnetForCausalLM.from_pretrained(
        modelpath,
        device_map='auto',
        low_cpu_mem_usage=True,
        use_flash_attention_2=False,
        torch_dtype=torch.float16,
    ).half()
    model.gradient_checkpointing_enable()
    model.enable_input_require_grads()
    tokenizer = BitnetTokenizer.from_pretrained(modelpath, use_fast=False)

    print("Setup Data...")
    dataset = 'wikitext2'
    traindata = get_train_dataset(dataset, tokenizer, seqlen=2048)

    print("Setup PEFT...")
    peft_config = get_peft_config(peft_args=peft_args)
    model = get_peft_model(model, peft_config)

    print("Train...")
    trainer = Trainer(model=model,
                      train_dataset = traindata,
                      args=training_args,
                      )
    trainer.train()



if __name__ == '__main__':
    main()

