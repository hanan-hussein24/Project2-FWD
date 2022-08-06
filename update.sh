#!/bin/bash
echo "Creating stack ..... "
sudo aws cloudformation package --template-file project2-nestedStack.yml --s3-bucket dummywebapp-cloudformation-aio > out.yml
sudo aws cloudformation update-stack --stack-name project2-Dummy1 --template-body file://out.yml  --capabilities "CAPABILITY_NAMED_IAM" --region=us-east-1