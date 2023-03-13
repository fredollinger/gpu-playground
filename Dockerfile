FROM nvidia/cuda:12.1.0-devel-ubuntu18.04

RUN apt update \ 
    && apt -u -qy dist-upgrade \
    && apt install -qy git vim
