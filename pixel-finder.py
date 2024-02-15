#!/usr/bin/env python

import tifffile

with tifffile.TiffFile('morphology.ome.tif') as tif:
    for tag in tif.pages[0].tags.values():
        if tag.name == "ImageDescription":
            print(tag.name+":", tag.value)

