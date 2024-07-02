#!/bin/bash
# pip install vllm -U
# pip install transformers -U
# export PATH=/home/jeeves/.local/bin:$PATH
# cd src/
model_path=/data/public/wangshuo/LongContext/model/01-ai/Yi-6B-200K
model_name=yi-6b-200k
for task in code_debug longbook_choice_eng longbook_qa_chn longbook_qa_eng longbook_sum_eng longdialogue_qa_eng; do
    python ../src/eval_yi_200k.py --task ${task} --model_path ${model_path} --output_dir ../temp --model_name ${model_name} --verbose --gpu 6,7 --ngpu 2
done

#code_debug code_run kv_retrieval longbook_choice_eng longbook_qa_chn longbook_qa_eng longbook_sum_eng longdialogue_qa_eng math_calc math_find number_string passkey