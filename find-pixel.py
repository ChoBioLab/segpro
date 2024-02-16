#!/usr/bin/env python

import tifffile

with tifffile.TiffFile('/home/cw/Downloads/output-XETG00189__0010700__50452B-TUQ97N-EA__20240126__205019/morphology.ome.tif') as tif:
    for tag in tif.pages[0].tags.values():
        if tag.name == "ImageDescription":
            print(tag.name+":", tag.value)

