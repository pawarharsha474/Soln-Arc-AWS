## Create a bucket
aws s3 mb s3://cors-fun-bkt

## Change block public access
aws s3api put-public-access-block \
    --bucket cors-fun-bkt \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=False,RestrictPublicBuckets=False"

## Create a bucket policy
aws s3api put-bucket-policy --bucket cors-fun-bkt --policy file://policy.json

## Create static-website policy

aws s3api put-bucket-website --bucket amzn-s3-demo-bucket --website-configuration file://website.json