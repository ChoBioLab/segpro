#!/usr/bin/env python3

import numpy as np
from glob import glob

fnames = glob('*morphology.ome_seg.npy')

for f in fnames:
    dat = np.load(f, allow_pickle=True).item()

    for key in dat.keys():
        dtype = type(dat[key])
        print("Key:", key)
        print("Dtype:", dtype)

        if isinstance(dat[key], np.ndarray):
            print("Dimension:", dat[key].shape)
        elif isinstance(dat[key], list):
            print("Length:", len(dat[key]))

        # empty line between keys
        print()

