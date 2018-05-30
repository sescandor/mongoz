#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM ubuntu:16.04

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  apt-get install -y tcpdump && \
  apt-get install -y automake && \
  apt-get install -y libpcap-dev libssl-dev && \
  apt-get install -y build-essential && \
  rm -rf /var/lib/apt/lists/* \

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

RUN git clone https://github.com/yandex/mongoz
