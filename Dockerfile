FROM ubuntu:14.04
MAINTAINER Yves Serrano <y@yas.ch>

RUN apt-get update -yq && apt-get install -yq \
        apt-transport-https \
        ca-certificates \
        lxc \
        iptables \
        apparmor \
        make \
        fontconfig-config fonts-dejavu-core libfontconfig1 libfreetype6 \
        libjpeg-turbo8 libjpeg8 \
        curl && \
    curl -sSL https://get.docker.com/ubuntu/ | sudo sh && \
    curl -sL https://deb.nodesource.com/setup | sudo bash - && \
    apt-get install -yq nodejs && \
    curl -L https://raw.githubusercontent.com/jpetazzo/dind/master/wrapdocker > /usr/local/bin/wrapdocker; chmod +x /usr/local/bin/wrapdocker && \
    curl -L https://github.com/docker/fig/releases/download/1.0.1/fig-`uname -s`-`uname -m` > /usr/local/bin/fig; chmod +x /usr/local/bin/fig && \
    npm install dalek-cli -g && \
    npm install dalekjs --save-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
ADD files /root/files
