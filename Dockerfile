FROM ubuntu:20.04

RUN set -x; \
    apt-get update \
    && apt-get install -y --no-install-recommends software-properties-common \
    && add-apt-repository ppa:deadsnakes/ppa \
    && apt-get install -y --no-install-recommends \
    git curl sshpass software-properties-common python3.8 python3-pip openssh-server

RUN pip install python-gitlab odoorpc markdownify
