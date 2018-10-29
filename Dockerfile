FROM ubuntu:14.04

RUN dpkg --add-architecture i386 && \
  apt-get update && \
  apt-get -y install lib32stdc++6 expect build-essential unzip && \
  apt-get install wine1.6 -y

COPY ./Installer /tmp
COPY ./install.sh /tmp
COPY ./entrypoint.sh /
COPY Keil_v5.zip /tmp

ENV KEIL_HOME /root/.wine/drive_c/Keil_v5
ENV PATH $PATH:/usr/local/ARM_Compiler_5.06u6/bin64
RUN sh /tmp/install.sh && \
  mkdir -p /root/.wine/drive_c && \
  unzip /tmp/Keil_v5.zip -d /root/.wine/drive_c && \
  mv $KEIL_HOME/ARM/sw/mappings/*.elmap /usr/local/ARM_Compiler_5.06u6/sw/mappings

ENTRYPOINT ["/entrypoint.sh"]
