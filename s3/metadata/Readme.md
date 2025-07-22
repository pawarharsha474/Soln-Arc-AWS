##creating a bucket

aws s3 mb s3://firstapibucket1  --region us-east-1

##create a new file
echo "Hello sunshine" > heiie.txt

##upload with metadata
aws s3api  put-object --bucket metadata-firstapibucket1 --key heiie.txt --metadata KeyName1=string,KeyName2=string