#!/bin/bash

# Usage
# exec.sh 1.3

docker build -t aws-lambda-deploy:$1 .
docker tag react-base:$1 super37/aws-lambda-deploy:$1
docker push super37/aws-lambda-deploy:$1
