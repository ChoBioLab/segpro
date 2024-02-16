#!/bin/bash

python transcript-mapper.py \
  -cellpose level_3_morphology.ome_seg.npy \
  -transcript transcripts.parquet \
  -out feature_cell_matrix \
  -pix_size 1.7
