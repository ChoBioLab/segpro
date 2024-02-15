#!/bin/bash

python -m cellpose \
  --dir <ABS_PATH_OF_IMG> \
  --pretrained_model nuclei \
  --chan 0 \
  --chan2 0 \
  --img_filter _morphology.ome \
  --diameter <DIAMETER_PIXEL> \
  --do_3D \
  --save_tif \
  --verbose \
  --use_gpu
