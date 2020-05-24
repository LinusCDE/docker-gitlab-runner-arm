# docker-gitlab-runner-arm

![CI](https://github.com/LinusCDE/docker-gitlab-runner-arm/workflows/CI/badge.svg)

This contains GitLabs official GitLab-Runner binary for arm (32 bit by default).

## Disclaimer

This docker image downloads [gitlab-runner](https://gitlab.com/gitlab-org/gitlab-runner/) from their official server. It is [licenced under the MIT license](https://gitlab.com/gitlab-org/gitlab-runner/-/blob/master/LICENSE).

## Build and run with docker

```
docker build -t gitlab-runner-arm .
docker run --name gitlab_runner -v /path/to/config:/etc/gitlab-runner gitlab-runner-arm
```

## Build and run with docker compose

Simply run `docker-compose up -d`

If you updated this repository, you should stop the image, rebuild the image (`docker-compose rebuild`) and then start it up again.
