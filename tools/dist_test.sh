#!/usr/bin/env bash

CONFIG=$1
CHECKPOINT=$2
GPUS=$3
PORT=${PORT:-29500}

PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
python -m torch.distributed.launch --nproc_per_node=$GPUS --master_port=$PORT \
    $(dirname "$0")/test.py $CONFIG $CHECKPOINT --launcher pytorch ${@:4}

# tools/dist_test.sh projects/configs/nuscenes/Fusion_0075_refactor.py /home/cheng443/FusionAttack/DeepInteraction/pretrained/Fusion_0075_refactor.pth 4 --eval=bbox