#!/bin/bash

cellpose \
  --dir /sc/arion/projects/untreatedIBD/ctastad/projects/segpro \
  --pretrained_model nuclei \
  --chan 0 \
  --chan2 0 \
  --img_filter _morphology.ome \
  --diameter 10 \
  --do_3D \
  --save_tif \
  --verbose \
  --use_gpu
  #--batch_size 1 \
