#!/usr/bin/env bash

CONFIG=$1
CHECKPOINT=$2

PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
python $(dirname "$0")/test.py $CONFIG $CHECKPOINT ${@:3}

# tools/single_test.sh projects/configs/nuscenes/Fusion_0075_refactor.py /home/cheng443/FusionAttack/DeepInteraction/pretrained/Fusion_0075_refactor.pth --eval=bbox
# python tools/test.py projects/configs/nuscenes/Fusion_0075_refactor.py /home/cheng443/FusionAttack/DeepInteraction/pretrained/Fusion_0075_refactor.pth --eval=bbox

# python tools/test.py projects/configs/nuscenes/Fusion_0075_refactor.py pretrained/Fusion_0075_refactor.pth --eval=bbox

# Evaluating bboxes of pts_bbox
# mAP: 0.5965                                                                                                 
# mATE: 0.4027
# mASE: 0.4393
# mAOE: 0.4588
# mAVE: 0.4186
# mAAE: 0.2998
# NDS: 0.5963
# Eval time: 2.5s

# Per-class results:
# Object Class    AP      ATE     ASE     AOE     AVE     AAE
# car     0.918   0.171   0.149   0.100   0.108   0.069
# truck   0.906   0.141   0.138   0.021   0.069   0.018
# bus     0.994   0.163   0.082   0.032   0.478   0.183
# trailer 0.000   1.000   1.000   1.000   1.000   1.000
# construction_vehicle    0.000   1.000   1.000   1.000   1.000   1.000
# pedestrian      0.928   0.109   0.255   0.296   0.210   0.128
# motorcycle      0.724   0.193   0.252   0.355   0.054   0.000
# bicycle 0.667   0.175   0.208   0.325   0.430   0.000
# traffic_cone    0.827   0.075   0.309   nan     nan     nan
# barrier 0.000   1.000   1.000   1.000   nan     nan