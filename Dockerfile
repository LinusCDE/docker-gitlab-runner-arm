FROM alpine:3

RUN apk update && apk add curl

# Arm
RUN curl -L --output /usr/local/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-arm
# Arm64
#curl -L --output /usr/local/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-arm64

RUN chmod +x /usr/local/bin/gitlab-runner

ENTRYPOINT ["/usr/local/bin/gitlab-runner", "run"]
