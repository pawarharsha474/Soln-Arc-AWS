
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
````sh
aws s3api put-object --bucket="prefixes-starbucket1" --key="The wolves stopped in their tracks, sizing up the mother and her cubs. It had been over a week since their last meal and they were getting desperate. The cubs would make a good meal, but there were high risks taking on the mother Grizzly. A decision had to be made and the wrong choice could signal the end of the pack"
