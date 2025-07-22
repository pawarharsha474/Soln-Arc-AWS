##creating a bucket

aws s3 mb s3://mymetabucket1  --region us-east-1

##create a new file
echo "Hello sunshine" > heiie.txt

##upload with metadata
aws s3api put-object --bucket mymetabucket1 --key heiie.txt --body heiie.txt --metadata planet=venus

aws s3api put-object --bucket mymetabucket1 --key heiie.txt --body heiie.txt --metadata planet=venus