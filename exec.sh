#!/bin/bash

# Usage
# exec.sh 1.3

docker build -t react-base:$1 .
docker tag react-base:$1 super37/react-base:$1
docker push super37/react-base:$1
