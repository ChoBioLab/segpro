#!/usr/bin/env python3

import pandas as pd

data_frame = pd.read_parquet('transcripts.parquet')
print(data_frame.dtypes)
print(data_frame[:10])

