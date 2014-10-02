#!/bin/bash
#prepare training batches for xpro III effect on uniform_set_100 dataset


dataDir="/home/yzc/yzc/proj/cnn-image-enhance/data/uniform_set_100_xpro"
train_image_id_file="uniform_set_100_train_id.txt"
test_image_id_file="uniform_set_100_test_id.txt"
data_save_dir="uniform_set_100_7K_10_batch_seg_voting_k0.10"

python trainPatchPreparer.py --num-proc=20 --ori-img-folder=${dataDir}/uniform_set_100_autotoned_tif --img-seg-dir=${dataDir}/uniform_set_100_autotoned_seg --sem-integral-map-dir=${dataDir}/context/Parts_seg_voting_k0.10 --semantic-map-dir=${dataDir}/context/uniform_100_seg_voting_k0.10 --train-image-id-file=${dataDir}/${train_image_id_file} --test-image-id-file=${dataDir}/${test_image_id_file}  --enh-img-folder=${dataDir}/uniform_set_100_local_tif  --data-save-path=${dataDir}/${data_save_dir} --num-batches=10 --preload-all-ori-img=1 --segment-random-sample-num=10 --do-compute-image-global-ftr=1 --do-local-context-SPM-regions=0 --do-compute-color-integral-map=0 --do-write-color-batch-files=1 --context-ftr-baseline=0
