## Create a bucket without versioning 
aws s3 mb s3://myversioningb1

# create a unversioned file
echo "Hello World" > myfile.txt

# copy the unversioned file to s3
aws s3 cp myfile.txt s3://aws-s3-versioning-ab5345

# show the contents of the s3 bucket notice that s3 ls does not show versioning information
aws s3 ls s3://aws-s3-versioning-ab5345