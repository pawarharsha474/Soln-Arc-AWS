## Create a bucket
aws s3 mb s3://cors-123-buc

## Change block public access
aws s3api put-public-access-block \
    --bucket cors-123-buc \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=False,RestrictPublicBuckets=False"

## Create a bucket policy
aws s3api put-bucket-policy --bucket cors-123-buc --policy file://policy.json

## Trun on  static-website hosting

aws s3api put-bucket-website --bucket cors-123-buc --website-configuration file://website.json

## Upload index file in s3  

aws s3 cp index.html s3://cors-123-buc


## View the webiste and see  if  html file  is there or not
 
http://cors-123-buc.s3-website.ca-central-1.amazonaws.com
