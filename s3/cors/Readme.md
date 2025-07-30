## Create a bucket
aws s3 mb s3://cors-fun-bkt

## Change block public access
aws s3api put-public-access-block \
    --bucket cors-fun-bkt \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=False,RestrictPublicBuckets=False"

## Create a bucket policy
aws s3api put-bucket-policy --bucket cors-fun-bkt --policy file://policy.json

## Trun on  static-website hosting

aws s3api put-bucket-website --bucket cors-fun-bkt --website-configuration file://website.json

## Upload index file in s3  

aws s3 cp index.html s3://cors-fun-bkt

## Get the webiste endpoint for s3

