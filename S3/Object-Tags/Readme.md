aws s3 mb s3://my-obejct-tag-bkt

echo "Hii there this is obejct-tage practicle" >hello.txt

aws s3 cp hello.txt s3://my-obejct-tag-bkt/hello.txt
