FROM ubuntu:14.04

RUN apt-get update && apt-get -y install lib32stdc++6 expect build-essential unzip
ADD ./Installer /tmp
ADD ./install.sh /tmp
ADD elmaps.zip /tmp
ENV PATH $PATH:/usr/local/ARM_Compiler_5/bin64
RUN sh /tmp/install.sh
RUN unzip /tmp/elmaps.zip && mv *.elmap /usr/local/ARM_Compiler_5/sw/mappings
