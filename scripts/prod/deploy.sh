#!/bin/bash
# The command deploy the infrstructure in "eu-central-1" using the S3 Bucket "readapp-cloudformation-backend"
rm -rf .aws-sam
sam build --template templates/prod.yml
sam deploy --stack-name readapp-backend --s3-bucket readapp-cloudformation-backend --capabilities CAPABILITY_IAM --region eu-central-1