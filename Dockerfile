# syntax=docker/dockerfile:experimental
FROM ubuntu:20.04
RUN useradd -ms /bin/bash builder \
  && apt-get -qq update && apt-get -qq install sudo \
  && /bin/bash -c 'echo "builder ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/99_sudo_include_file'
USER builder
WORKDIR /home/builder
RUN --mount=type=bind,source=.,target=/tmp/host cd /tmp/host && ./initenv.sh
