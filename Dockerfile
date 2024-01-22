FROM nvidia/cuda:12.0.0-base-ubuntu20.04

USER root

COPY ./requirements.txt /tmp
WORKDIR /code

RUN apt update -y && apt upgrade -y && apt install -y curl python3 python3-distutils
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py

RUN pip install -r /tmp/requirements.txt
