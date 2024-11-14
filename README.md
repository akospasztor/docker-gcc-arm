# docker-gcc-arm

This repository contains docker container images with
[GNU Arm Embedded Toolchain](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm)
pre-installed. Each image has a specific GCC version. The images are based on
[akospasztor/docker-python](https://github.com/akospasztor/docker-python).

Repository link:
[https://github.com/akospasztor/docker-gcc-arm](https://github.com/akospasztor/docker-gcc-arm)

Docker Hub link:
[https://hub.docker.com/r/akospasztor/docker-gcc-arm](https://hub.docker.com/r/akospasztor/docker-gcc-arm)

[![Docker Image CI](https://github.com/akospasztor/docker-gcc-arm/actions/workflows/ci-docker-image.yml/badge.svg)](https://github.com/akospasztor/docker-gcc-arm/actions/workflows/ci-docker-image.yml)

## Available Images

Available images:

| Image:     | Architecture | Base image                                 |
| ---------- | ------------ | ------------------------------------------ |
| 10-2020-q4 | linux        | akospasztor/docker-python:3.11-linux-2.0.1 |
| 9-2020-q2  | linux        | akospasztor/docker-python:3.11-linux-2.0.1 |
| 9-2019-q4  | linux        | akospasztor/docker-python:3.11-linux-2.0.1 |
| 8-2019-q3  | linux        | akospasztor/docker-python:3.11-linux-2.0.1 |

## Tags

GCC for ARM version 10-2020-q4:

- `10-2020-q4-linux-2.2.0`, `10-2020-q4-linux-latest`
- `10-2020-q4-linux-2.1.0`
- `10-2020-q4-linux-2.0.0`
- `10-2020-q4-linux-1.0.2`
- `10-2020-q4-linux-1.0.1`
- `10-2020-q4-linux-1.0.0`

GCC for ARM version 9-2020-q2:

- `9-2020-q2-linux-2.2.0`, `9-2020-q2-linux-latest`
- `9-2020-q2-linux-2.1.0`
- `9-2020-q2-linux-2.0.0`
- `9-2020-q2-linux-1.0.2`
- `9-2020-q2-linux-1.0.1`
- `9-2020-q2-linux-1.0.0`

GCC for ARM version 9-2019-q4:

- `9-2019-q4-linux-2.2.0`, `9-2019-q4-linux-latest`
- `9-2019-q4-linux-2.1.0`
- `9-2019-q4-linux-2.0.0`
- `9-2019-q4-linux-1.0.2`
- `9-2019-q4-linux-1.0.1`
- `9-2019-q4-linux-1.0.0`

GCC for ARM version 8-2019-q3:

- `8-2019-q3-linux-2.2.0`, `8-2019-q3-linux-latest`
- `8-2019-q3-linux-2.1.0`
- `8-2019-q3-linux-2.0.0`
- `8-2019-q3-linux-1.0.2`
- `8-2019-q3-linux-1.0.1`
- `8-2019-q3-linux-1.0.0`

## Components

All latest images contain the following main software packages:

| Software:                   | Version                 |
| --------------------------- | ----------------------- |
| Clang-format                | latest available in apt |
| Clang-tidy                  | latest available in apt |
| CMake                       | 3.29.6                  |
| Doxygen                     | latest available in apt |
| GCC for ARM (arm-none-eabi) | depends on the image    |
| Make                        | latest available in apt |
| Ninja                       | 1.12.1                  |
| Python                      | 3.11                    |

## Usage

Pull latest image with gcc version 10-2020-q4 for linux:

```bash
docker pull akospasztor/docker-gcc-arm:10-2020-q4-linux-latest
```

Build image with gcc version 10-2020-q4 for linux:

```bash
docker build -t akospasztor/docker-gcc-arm:10-2020-q4-linux-latest 10-2020-q4/linux/
```

Manually run container and mount a project folder:

```bash
docker run --rm -it -v <path-to-project>:<path-to-project> akospasztor/docker-gcc-arm:10-2020-q4-linux-latest
```

Manually push all tags to Docker Hub:

```bash
docker push -a akospasztor/docker-gcc-arm
```
