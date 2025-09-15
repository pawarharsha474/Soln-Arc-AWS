## Create a bucket in glacier
aws s3 mb s3://gla-bkt1

echo "Hello creating pre-signeed url, it is used by other user to read-write obejects using single  url without giving access to other components" > hello.txt

aws s3 cp  hello.txt s3://gla-bkt1 --storage-class GLACIER 