ARG   BASE_IMAGE
FROM $BASE_IMAGE

MAINTAINER Leonardo Lobo Lima <dleemoo@gmail.com>

ENV LANG=C.UTF-8

RUN set -ex \
  # update debian
  && DEBIAN_FRONTEND=noninteractive apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y \
  # remove apt files
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
