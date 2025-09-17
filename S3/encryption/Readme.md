##  Create a bucket

aws s3 mb s3://enc-buc1

## uplod file to s3
aws s3  cp hi.txt s3://enc-buc1

## Put object with encryption of KMS

aws s3api put-obeject \
--bucket enc-buc1 \
--key hi.txt --body hi.txt
--body hi.txt
--server-side-encryption aws:kms
--sse-kms-key-id 
