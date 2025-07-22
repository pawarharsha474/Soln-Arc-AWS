##creating a bucket

aws s3 mb s3://mysecondbktmolu  --region us-east-1

##create a new file
echo "Hello sunshine" > heiie.txt

##upload with metadata
aws s3api  put-object --bucket metadata-mysecondbktmolu --key heiie.txt --body heiie.txt --metadata planet=venus