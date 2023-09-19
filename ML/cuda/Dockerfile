FROM nvidia/cuda:11.8.0-devel-ubuntu20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get install -y software-properties-common \
&& add-apt-repository ppa:deadsnakes/ppa && apt install -y  python3.10
RUN apt install -y curl wget
RUN apt remove python3.8 -y
RUN ln -s -f /usr/bin/python3.10 /usr/bin/python
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py
RUN useradd -ms /bin/bash usera
WORKDIR /app
