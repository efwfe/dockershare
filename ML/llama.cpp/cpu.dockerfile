FROM ubuntu:22.04

RUN apt update && apt-get -y install git wget \
    python3.10 python3.10-venv python3-pip \
    build-essential libgl-dev libglib2.0-0 gcc g++ libopenblas-dev pkg-config make cmake unzip curl

RUN ln -s /usr/bin/python3.10 /usr/bin/python
RUN useradd -ms /bin/bash usera

WORKDIR /app
RUN git clone https://github.com/ggerganov/llama.cpp
RUN cd llama.cpp && mkdir build && cd build && cmake .. -DLLAMA_BLAS=ON -DLLAMA_BLAS_VENDOR=OpenBLAS  && cmake --build . --config Release
WORKDIR /app/llama.cpp/build

