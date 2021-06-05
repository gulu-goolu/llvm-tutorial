FROM ubuntu:20.04

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt update &&\
    apt install -y make gcc g++ cmake python3 zlib1g-dev git wget
