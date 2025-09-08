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
    --assume-role-policy-document file://s3-replication-role-Trust-Policy.json

## Turn on Replication
aws s3api put-bucket-replication \
    --bucket rep-wonderh1  \
    --replication-configuration file://replication.json


