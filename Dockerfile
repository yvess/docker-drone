FROM ubuntu:14.04
MAINTAINER Yves Serrano <y@yas.ch>

RUN apt-get update -yq && apt-get install -yq \
        apparmor \
        make \
        curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN curl -sSL https://get.docker.com/ubuntu/ | sudo sh
ADD files /root/files
RUN /root/files/download.sh
