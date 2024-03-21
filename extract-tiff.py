#!/usr/bin/env python

import tifffile

# Variable 'LEVEL' determines the level to extract. It ranges from 0 (highest
# resolution) to 6 (lowest resolution) for morphology.ome.tif
LEVEL = 1

with tifffile.TiffFile('/sc/arion/projects/untreatedIBD/chobiolab-core/shared-xenium-library/outputs/TUQ97N/CHO-001/output-XETG00189__0010700__50452B-TUQ97N-EA__20240126__205019/morphology.ome.tif') as tif:
    image = tif.series[0].levels[LEVEL].asarray()

tifffile.imwrite(
    'level_'+str(LEVEL)+'_morphology.ome.tif',
    image,
    photometric='minisblack',
    dtype='uint16',
    tile=(1024, 1024),
    compression='JPEG_2000_LOSSY',
    metadata={'axes': 'ZYX'},
)

