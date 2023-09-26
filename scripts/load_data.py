# scripts/load_data.py

import os

# Assuming you have AWS CLI configured
data_folder = 'data'
s3_bucket = 'your-s3-bucket'

# Upload data files to S3
for filename in os.listdir(data_folder):
    if filename.endswith('.gz'):
        os.system(f'aws s3 cp {os.path.join(data_folder, filename)} s3://{s3_bucket}/{filename}')
