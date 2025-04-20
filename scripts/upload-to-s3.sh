#!/bin/bash

S3_BUCKET_NAME=saurab.ghimire.cloud.computing.react-codepipeline

echo "Uploading build files to S3 bucket: $S3_BUCKET_NAME"
aws s3 sync /tmp/react-build/ s3://$S3_BUCKET_NAME/ --delete
