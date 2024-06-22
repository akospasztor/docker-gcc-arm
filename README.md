# docker-gcc-arm

This repository contains docker container images with
[GNU Arm Embedded Toolchain](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm)
pre-installed. Each image has a specific GCC version. The images are based on
[akospasztor/docker-python](https://github.com/akospasztor/docker-python).

Repository link: https://github.com/akospasztor/docker-gcc-arm

Docker Hub link: https://hub.docker.com/r/akospasztor/docker-gcc-arm

[![Docker Image CI](https://github.com/akospasztor/docker-gcc-arm/actions/workflows/ci-docker-image.yml/badge.svg)](https://github.com/akospasztor/docker-gcc-arm/actions/workflows/ci-docker-image.yml)

## Usage

Build image with gcc version 10-2020-q4 for linux:

```bash
docker build -t akospasztor/docker-gcc-arm:10-2020-q4-linux-latest 10-2020-q4/linux/
```

Manually run container and mount a project folder:

```bash
docker run --rm -it -v <path-to-project-folder>:/app akospasztor/docker-gcc-arm:10-2020-q4-linux-latest
```

Manually push all tags to Docker Hub:

```bash
docker push -a akospasztor/docker-gcc-arm
```
