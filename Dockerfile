FROM ubuntu:16.04

RUN apt-get install expect -y
ADD ./Installer /tmp
ADD ./install.sh /tmp
RUN /tmp/install.sh
