# 定义变量
datapath="C:\\Users\\JACK\\Desktop\\SimpleNet-main\\SimpleNet-main"
datasets=('toothbrush' 'bottle')

# 运行 Python 脚本
python main.py \
--gpu 0 \
--seed 0 \
--log_group simplenet_mvtec \
--log_project MVTec_ad_Results \
--results_path results_test \
--run_name run \
net \
-b wideresnet50 \
-le layer2 \
-le layer3 \
--pretrain_embed_dimension 1536 \
--target_embed_dimension 1536 \
--patchsize 3 \
--meta_epochs 40 \
--embedding_size 256 \
--gan_epochs 4 \
--noise_std 0.015 \
--dsc_hidden 1024 \
--dsc_layers 2 \
--dsc_margin .5 \
--pre_proj 1 \
dataset \
--batch_size 8 \
--resize 329 \
--imagesize 288 -d toothbrush -d bottle mvtec $datapath

