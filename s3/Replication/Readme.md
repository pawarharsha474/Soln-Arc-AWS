## Create an s3 bucket
aws s3 mb s3://rep-wonderh1 --region ca-central-1
aws s3 mb s3://rep-wonderh2 --region us-east-1


## Enable bucket versioning:
aws s3api put-bucket-versioning --bucket rep-wonderh1 --versioning-configuration Status=Enabled

aws s3api put-bucket-versioning --bucket rep-wonderh2 --versioning-configuration Status=Enabled


## Create a Role and policy  for s3 replication 
aws iam create-policy --policy-name s3-replica-example --policy-document file://policy.json

aws iam create-role \
    --role-name s3-replication-role \
    --assume-role-policy-document file://Trust.json


aws iam attach-role-policy \
  --policy-arn arn:aws:iam::393213447885:policy/s3-replica-example \
  --role-name s3-replication-role




## Turn on Replication
aws s3api put-bucket-replication \
    --bucket rep-wonderh1  \
    --replication-configuration file://replication.json

## Create a file and upload to our bucket  
echo "Hello World this is harsha here" >hello.txt
aws s3 cp hello.txt s3://rep-wonderh1/hello.txt

## Check dest buckket to see if replication worked 
aws s3 ls s3://rep-wonderh2


## Cleanup (it clears from source bucket but doesnt  clear from destination bucket)
aws s3 rm s3://rep-wonderh1/hello.txt
aws s3 rm s3://rep-wonderh2/hello.txt

## Delete buckets from aws
aws s3 rb  s3://rep-wonderh1
