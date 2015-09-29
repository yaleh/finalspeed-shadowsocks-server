# This dockerfile uses the ubuntu image
# VERSION 1 - EDITION 1
# Author: Yourtion
# Command format: Instruction [arguments / command] ..

# Base image to use, this must be set as the first line
FROM ubuntu

MAINTAINER Yourtion <yourtion@gmail.com>

# Commands to update the image
RUN apt-get -qqy update && apt-get -qqy upgrade

# Install shadowsocks-libev
RUN apt-get -y install wget
RUN wget -O- http://shadowsocks.org/debian/1D27208A.gpg | sudo apt-key add - && \
    echo "deb http://shadowsocks.org/debian wheezy main" >> /etc/apt/sources.list && \
    apt-get -qqy update && \
    apt-get -y install shadowsocks-libev
    
EXPOSE 8388

ENTRYPOINT ["/usr/bin/ss-server", "-s", "0.0.0.0", "-p", "8388", "-l", "1080", "-k", $PASSWORD, "-m", "aes-256-cfb"]
