
FROM ubuntu:14.04

ARG UNAME
ARG UID
ARG GID

RUN apt-get update && apt-get install -y \
  flex \
  libtool \
  libcrypto++-dev \
  libssl-dev \
  libgmp3-dev \
  libboost-serialization-dev \
  build-essential \
  g++ \
  git \
  screen \
  python \
  python-dev \
  tmux \
  vim

ENV TERM xterm

#Generates user
RUN adduser --disabled-password --gecos '' --uid ${UID} --gid ${GID} --home /home/${UNAME} ${UNAME} && adduser ${UNAME} sudo && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER ${UNAME}
WORKDIR /home/${UNAME}

