FROM ubuntu:16.04

RUN apt-get update && apt-get -y install expect
ADD ./Installer /tmp
ADD ./install.sh /tmp
RUN /tmp/install.sh
