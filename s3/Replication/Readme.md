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

/*{
    "Role": {
        "Path": "/",
        "RoleName": "s3-replication-role",
        "RoleId": "AROAVXDKZB3G6SLESOHFB",
        "Arn": "arn:aws:iam::393213447885:role/s3-replication-role",
        "CreateDate": "2025-09-08T12:50:00+00:00",
        "AssumeRolePolicyDocument": {
:*/

aws iam attach-role-policy \
    --policy-arn arn:aws:iam::aws:policy/ReadOnlyAccess \
    --role-name ReadOnlyRole

    
## Turn on Replication
aws s3api put-bucket-replication \
    --bucket rep-wonderh1  \
    --replication-configuration file://replication.json


