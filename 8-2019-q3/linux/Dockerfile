FROM akospasztor/docker-python:3.7-linux-1.0.0

# Suppress user dialogs (and selects the default answer) during apt-get install
ARG DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN apt-get update && apt-get install -y \
    doxygen \
    make \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Install GCC for ARM
ENV GCC_VERSION=8-2019-q3
ENV GCC_DIR=$HOME/gcc/$GCC_VERSION

RUN wget --progress=dot:mega -O /tmp/$GCC_VERSION.tar.bz2 \
    https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2019q3/RC1.1/gcc-arm-none-eabi-8-2019-q3-update-linux.tar.bz2

RUN mkdir -p $GCC_DIR
RUN tar xjf /tmp/$GCC_VERSION.tar.bz2 -C $GCC_DIR --strip-components=1
RUN rm -f /tmp/$GCC_VERSION.tar.bz2

ENV GCC_PATH=$GCC_DIR/bin
ENV PATH=$GCC_PATH:$PATH
