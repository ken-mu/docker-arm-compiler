FROM ubuntu:14.04

RUN dpkg --add-architecture i386
RUN apt-get update && apt-get -y install lib32stdc++6 expect build-essential unzip
RUN apt-get install wine1.6 -y
ADD ./Installer /tmp
ADD ./install.sh /tmp
ADD mdk_elmaps.zip /tmp
ADD Keil_v5.zip /tmp

ENV PATH $PATH:/usr/local/ARM_Compiler_5.06u6/bin64
RUN sh /tmp/install.sh
RUN unzip /tmp/Keil_v5.zip && unzip /tmp/mdk_elmaps.zip && mv *.elmap /usr/local/ARM_Compiler_5.06u6/sw/mappings
