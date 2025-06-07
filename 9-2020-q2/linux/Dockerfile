FROM akospasztor/docker-python:3.11-linux-2.0.1

# Suppress user dialogs (and selects the default answer) during apt-get install
ARG DEBIAN_FRONTEND=noninteractive

# Install required packages
# Notes:
# - libpcre3-dev is required for building cppcheck
RUN apt-get update && apt-get -y -q --no-install-recommends install \
    clang-format \
    clang-tidy \
    doxygen \
    libpcre3-dev \
    make \
    unzip \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Install GCC for ARM
ENV GCC_VERSION=9-2020-q2
ENV GCC_URL=https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2020q2/gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar.bz2
ENV GCC_FILE=/tmp/gcc-$GCC_VERSION.tar.bz2
RUN wget --progress=dot:mega -O $GCC_FILE $GCC_URL

ENV GCC_DIR=/opt/gcc/$GCC_VERSION
RUN mkdir -p $GCC_DIR
RUN tar xjf $GCC_FILE -C $GCC_DIR --strip-components=1
RUN rm -f $GCC_FILE

ENV GCC_PATH=$GCC_DIR/bin
ENV PATH=$GCC_PATH:$PATH

# Install CMake
ENV CMAKE_VERSION=3.29.6
ENV CMAKE_URL=https://github.com/Kitware/CMake/releases/download/v3.29.6/cmake-3.29.6-linux-x86_64.tar.gz
ENV CMAKE_FILE=/tmp/cmake-$CMAKE_VERSION.tar.gz
RUN wget --progress=dot:mega -O $CMAKE_FILE $CMAKE_URL

ENV CMAKE_DIR=/opt/cmake/$CMAKE_VERSION
RUN mkdir -p $CMAKE_DIR
RUN tar xzf $CMAKE_FILE -C $CMAKE_DIR --strip-components=1
RUN rm -f $CMAKE_FILE

ENV CMAKE_PATH=$CMAKE_DIR/bin
ENV PATH=$CMAKE_PATH:$PATH

# Install Ninja
ENV NINJA_VERSION=1.12.1
ENV NINJA_URL=https://github.com/ninja-build/ninja/releases/download/v1.12.1/ninja-linux.zip
ENV NINJA_FILE=/tmp/ninja-$NINJA_VERSION.zip
RUN wget --progress=dot:mega -O $NINJA_FILE $NINJA_URL

ENV NINJA_DIR=/opt/ninja/$NINJA_VERSION
RUN mkdir -p $NINJA_DIR
RUN unzip $NINJA_FILE -d $NINJA_DIR
RUN rm -f $NINJA_FILE

ENV PATH=$NINJA_DIR:$PATH

# Install cppcheck
# See: https://github.com/danmar/cppcheck?tab=readme-ov-file#gnu-make
ARG CPPCHECK_VERSION=2.17.1
ENV CPPCHECK_URL=https://github.com/danmar/cppcheck/archive/refs/tags/$CPPCHECK_VERSION.tar.gz
ENV CPPCHECK_FILE=/tmp/cppcheck-$CPPCHECK_VERSION.tar.gz
RUN wget --progress=dot:mega -O $CPPCHECK_FILE $CPPCHECK_URL

RUN tar xzf $CPPCHECK_FILE -C /tmp
RUN cd /tmp/cppcheck-$CPPCHECK_VERSION && \
    make MATCHCOMPILER=yes FILESDIR=/usr/share/cppcheck HAVE_RULES=yes \
    CXXFLAGS="-O2 -DNDEBUG -Wall -Wno-sign-compare -Wno-unused-function" \
    install -j$(nproc)
RUN rm -rf /tmp/cppcheck-$CPPCHECK_VERSION
RUN rm -f $CPPCHECK_FILE
