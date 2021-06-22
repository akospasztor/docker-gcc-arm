# docker-gcc-arm

This repository contains docker container images with
[GNU Arm Embedded Toolchain](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm)
pre-installed. Each image has a specific GCC version. The images are based on
[akospasztor/docker-python](https://github.com/akospasztor/docker-python).

Repository link: https://github.com/akospasztor/docker-gcc-arm

Docker Hub link: https://hub.docker.com/r/akospasztor/docker-gcc-arm

[![Docker Image CI](https://github.com/akospasztor/docker-gcc-arm/actions/workflows/ci-docker-image.yml/badge.svg)](https://github.com/akospasztor/docker-gcc-arm/actions/workflows/ci-docker-image.yml)

## Usage

Build image with gcc version 8-2019-q3 for linux:

```bash
docker build -t akospasztor/docker-gcc-arm:8-2019-q3-linux 8-2019-q3/linux/
```

Manually push all tags to Docker Hub:

```bash
docker push -a akospasztor/docker-gcc-arm
```
