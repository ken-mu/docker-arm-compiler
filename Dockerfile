FROM ubuntu:14.04

RUN dpkg --add-architecture i386
RUN apt-get update && apt-get -y install lib32stdc++6 expect build-essential unzip
RUN apt-get install wine1.6 -y
ADD ./Installer /tmp
ADD ./install.sh /tmp
ADD mdk_elmaps.zip /tmp
ADD PackUnzip.exe /

ENV PATH $PATH:/usr/local/ARM_Compiler_5.06u6/bin64
RUN sh /tmp/install.sh
RUN unzip /tmp/mdk_elmaps.zip && mv *.elmap /usr/local/ARM_Compiler_5.06u6/sw/mappings

RUN wget https://keilpack.azureedge.net/pack/ARM.CMSIS.5.4.0.pack
