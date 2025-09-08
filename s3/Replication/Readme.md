## Create an s3 bucket
aws s3 mb s3://rep-wonderh1 --region ca-central-1
aws s3 mb s3://rep-wonderh2 --region us-east-1

## Turn on Replication

aws s3api put-bucket-replication \
    --bucket amzn-s3-demo-bucket1 \
    --replication-configuration file://replication.json