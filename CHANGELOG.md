# Changelog

## 2.0.0 (2024-02-12)

- Upgrade base images to akospasztor/docker-python:3.11-linux-2.0.0
- Move gcc installation location to `/opt/gcc/`
- CI:
  - Add docker image test to verify installed gcc version
  - Scan for vulnerabilities with docker scout
  - Update actions to their newest stable version

Available images:

| Image:     | Architecture | Base image                    |
| ---------- | ------------ | ----------------------------- |
| 8-2019-q3  | linux        | akospasztor/docker-python:3.7 |
| 9-2019-q4  | linux        | akospasztor/docker-python:3.7 |
| 9-2020-q2  | linux        | akospasztor/docker-python:3.7 |
| 10-2020-q4 | linux        | akospasztor/docker-python:3.7 |

## 1.0.2 (2021-08-04)

- Upgrade base image to akospasztor/docker-python:3.7-linux-1.0.1
- Reduce docker image size by adding `--no-install-recommends`

Available images:

| Image:     | Architecture | Base image                    |
| ---------- | ------------ | ----------------------------- |
| 8-2019-q3  | linux        | akospasztor/docker-python:3.7 |
| 9-2019-q4  | linux        | akospasztor/docker-python:3.7 |
| 9-2020-q2  | linux        | akospasztor/docker-python:3.7 |
| 10-2020-q4 | linux        | akospasztor/docker-python:3.7 |

## 1.0.1 (2021-06-25)

- Add clang-format-11 to installation list

Available images:

| Image:     | Architecture | Base image                    |
| ---------- | ------------ | ----------------------------- |
| 8-2019-q3  | linux        | akospasztor/docker-python:3.7 |
| 9-2019-q4  | linux        | akospasztor/docker-python:3.7 |
| 9-2020-q2  | linux        | akospasztor/docker-python:3.7 |
| 10-2020-q4 | linux        | akospasztor/docker-python:3.7 |

## 1.0.0 (2021-06-22)

- Initial release

Available images:

| Image:     | Architecture | Base image                    |
| ---------- | ------------ | ----------------------------- |
| 8-2019-q3  | linux        | akospasztor/docker-python:3.7 |
| 9-2019-q4  | linux        | akospasztor/docker-python:3.7 |
| 9-2020-q2  | linux        | akospasztor/docker-python:3.7 |
| 10-2020-q4 | linux        | akospasztor/docker-python:3.7 |
