FROM ubuntu:20.04

RUN apt update
RUN apt install zip unzip curl
RUN mkdir /aws_tmp && cd /tmp && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf /aws_tmp

WORKDIR /src/
