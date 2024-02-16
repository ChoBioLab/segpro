#!/bin/bash

python -m cellpose \
  --dir /home/cw/projects/cholab/segpro \
  --pretrained_model nuclei \
  --chan 0 \
  --chan2 0 \
  --img_filter _morphology.ome \
  --diameter 0.85 \
  --do_3D \
  --save_tif \
  --verbose \
  --use_gpu
