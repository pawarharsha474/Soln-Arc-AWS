
#creating a bucket
```sh
aws s3 mb s3://prefixes-starbucket1 \
    --region ca-central-1
```

#creating a folder 
```sh
    aws s3api put-object --bucket="prefixes-starbucket1" --key="actress/"
```

#creating many folder 