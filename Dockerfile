FROM python:latest

RUN apt update -y && \
    apt upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt install -y python3-pip && \
    export LC_ALL=C.UTF-8 && \
    export LANG=C.UTF-8 && \
    pip3 install stef pipenv && \
    apt-get clean
