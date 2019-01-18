FROM ubuntu:14.04

ENV KEIL_HOME /root/.wine/drive_c/Keil_v5

RUN dpkg --add-architecture i386 && \
  apt-get update && \
  apt-get -y install lib32stdc++6 expect build-essential unzip git curl libboost-all-dev && \
  apt-get install wine1.6 -y && \
  apt-get clean && rm -rf /var/lib/apt/lists/*
  
RUN wget https://github.com/Kitware/CMake/releases/download/v3.13.1/cmake-3.13.1.tar.gz && \
  tar xvf cmake-3.13.1.tar.gz && \
  cd cmake-3.13.1 && \
  ./configure && \
  make && \
  make install && \
  cd ..

COPY ./Installer /tmp
COPY ./install.sh /tmp
COPY ./entrypoint.sh /
COPY ./Keil_v5 $KEIL_HOME

RUN sh /tmp/install.sh && \
  ARM_COMPILER_DIR=$(ls /usr/local | grep ARM) && \
  mv $KEIL_HOME/ARM/sw/mappings/*.elmap /usr/local/${ARM_COMPILER_DIR}/sw/mappings

ENV PATH $PATH:/usr/local/${ARM_COMPILER_DIR}/bin64

ENTRYPOINT ["/entrypoint.sh"]
