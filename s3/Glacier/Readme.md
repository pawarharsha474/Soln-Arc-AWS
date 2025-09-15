## Create a bucket in glacier
aws s3 mb s3://gla-bkt1


## Storing a object in bucket(glacier) 
aws s3 cp  hello.txt s3://gla-bkt1 --storage-class GLACIER 


## Creating and upload a file in bucket
echo "Hello creating pre-signeed url, it is used by other user to read-write obejects using single  url without giving access to other components" > hello.txt

aws s3 cp s3://gla-bkt1/hello.txt hello.txt

## After deleting obeject from directory of 
aws s3 cp s3://gla-bkt1/hello.txt hello.txt

## Restoring the  object
aws s3api restore-object
--bucket gla-bkt1
--key hello.txt
--restore-request Days=1