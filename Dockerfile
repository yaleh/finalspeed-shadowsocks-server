# This dockerfile uses the ubuntu image
# VERSION 1 - EDITION 1
# Author: Yourtion
# Command format: Instruction [arguments / command] ..

# Base image to use, this must be set as the first line
FROM ubuntu

MAINTAINER Yourtion <yourtion@gmail.com>

# Commands to update the image
RUN apt-get update && apt-get -y upgrade

# Install shadowsocks-libev
RUN wget -O- http://shadowsocks.org/debian/1D27208A.gpg | sudo apt-key add - && \
    echo "deb http://shadowsocks.org/debian wheezy main" >> /etc/apt/sources.list && \
    apt-get -y update && \
    apt-get -y install shadowsocks-libev

ENTRYPOINT ["/usr/local/bin/ssserver", "-k $PASSWORD"]
EXPOSE 8388