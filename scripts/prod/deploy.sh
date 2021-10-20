#!/bin/bash
# The command deploy the infrstructure in "eu-central-1" using the S3 Bucket "readapp-backend-cloudformation"
sam deploy --stack-name readapp-backend --no-confirm-changeset --no-fail-on-empty-changeset --s3-bucket readapp-backend-cloudformation --template ./templates/prod.json --capabilities CAPABILITY_IAM --region eu-central-1