model_path=/data/public/wangshuo/LongContext/model/THUDM/LongAlign-7B-64k
model_name=longalign
for task in passkey; do
    python ../src/eval_longalign.py --task ${task} --model_path ${model_path} --model_name ${model_name} --verbose --gpu 4,5 --output_dir ../temp --ngpu 2
done
#code_debug code_run kv_retrieval longbook_choice_eng longbook_qa_chn longbook_qa_eng longbook_sum_eng longdialogue_qa_eng math_calc math_find number_string passkey