FROM ubuntu:14.04
MAINTAINER Yves Serrano <y@yas.ch>

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -yq && apt-get install -yq \
        apt-transport-https \
        ca-certificates \
        iptables \
        apparmor \
        make \
        curl && \
    curl -sSL https://get.docker.com/ | sh && \
    curl -L https://raw.githubusercontent.com/jpetazzo/dind/master/wrapdocker > /usr/local/bin/wrapdocker; chmod +x /usr/local/bin/wrapdocker && \
    curl -L https://github.com/docker/compose/releases/download/1.3.3/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
