python eval_chatglm.py --task kv_retrieval --model_path /data/public/wangshuo/LongContext/model/THUDM/chatglm3-6b-128k
pip install vllm-0.2.2+cu118-cp39-cp39-manylinux1_x86_64.whl --extra-index-url https://download.pytorch.org/whl/cu118
python eval_yarn_mistral.py --task kv_retrieval --model_path /data/public/wangshuo/LongContext/model/NousResearch/Yarn-Mistral-7b-128k
python eval_yi_200k.py --task kv_retrieval --model_path /data/public/wangshuo/LongContext/model/01-ai/Yi-6B-200K
python eval_longalign.py --task longbook_choice_eng --model_path /data/public/wangshuo/LongContext/model/THUDM/LongAlign-7B-64k
python compute_scores.py --task code_run,kv_retrieval,math_calc,math_find,number_string,passkey --model_name yi-6b-200k --output_dir ../temp/