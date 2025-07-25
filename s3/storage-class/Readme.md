##create a s3  bucket

aws s3 mb s3://lipstick-storage --region ap-south-1

##create a file
echo "hello world this is harsha doing aws stuff" > hello.txt 

aws s3 cp  hello.txt s3://