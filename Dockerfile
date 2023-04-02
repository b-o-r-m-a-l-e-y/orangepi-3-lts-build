FROM ubuntu:22.04

RUN apt update
RUN apt install -y sudo

RUN useradd --create-home --shell /bin/bash -G sudo orange
RUN echo 'orange:orange' | chpasswd

RUN apt install -y binutils make gcc xz-utils wget vim \

#For u-boot compile
RUN apt install -y bison flex python3 python3-setuptools swig \
                    python3-dev libssl-dev bc libncurses-dev

USER orange

WORKDIR /home/orange

#RUN wget http://releases.linaro.org/components/toolchain/binaries/7.3-2018.05/aarch64-linux-gnu/gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu.tar.xz
COPY gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu.tar.xz .
RUN tar xf gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu.tar.xz
ENV CROSS_COMPILE=/home/orange/gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
