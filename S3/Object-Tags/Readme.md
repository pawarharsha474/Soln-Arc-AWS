## Create a bucket
aws s3 mb s3://my-obejct-tag-bkt

## Create a file
echo "Hii there this is obejct-tage practicle" >hello.txt

## Upload a file
aws s3 cp hello.txt s3://my-obejct-tag-bkt/hello.txt


aws s3api put-object-tagging \
  --bucket my-obejct-tag-bkt \
  --key hello.txt \
  --tagging '{"TagSet": [{ "Key": "hello", "Value": "Hii there this is obejct-tage practicle" }]}'

