FROM ubuntu:18.04

RUN apt-get update && apt-get install -y -qq python \
        curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN curl -sO https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py

RUN pip install awscli --upgrade && \
    echo complete -C '/usr/local/bin/aws_completer' aws >> ~/.bashrc
