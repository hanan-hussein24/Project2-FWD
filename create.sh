#!/bin/bash
echo "Creating stack ..... "
sudo aws cloudformation package --template-file project2-nestedStack.yml --s3-bucket dummywebapp-cloudformation-aio > out.yml
sudo aws cloudformation create-stack --stack-name project2-Dummy1 --template-body file://out.yml  --region=us-east-1  --capabilities "CAPABILITY_NAMED_IAM"  --profile default