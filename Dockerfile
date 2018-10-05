FROM ubuntu:14.04

RUN apt-get update && apt-get -y install lib32stdc++6 expect
ADD ./Installer /tmp
ADD ./install.sh /tmp
RUN sh /tmp/install.sh
