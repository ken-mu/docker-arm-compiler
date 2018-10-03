FROM ubuntu:16.04

ADD ./Installer /tmp
RUN /tmp/setup.sh
