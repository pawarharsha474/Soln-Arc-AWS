## Create a bucket
aws s3 mb s3://cors-fun-bkt

## Change block public access
aws s3api put-public-access-block \
    --bucket cors-fun-bkt \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=False,RestrictPublicBuckets=False"

## Create a bucket policy
