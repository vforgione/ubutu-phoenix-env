FROM ubuntu:xenial
MAINTAINER Vince Forgione <vforgione@uchicago.edu>

ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8

RUN \
  apt-get -qq update && \
  apt-get -y -qq install wget curl build-essential locales && \
  wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
  dpkg -i erlang-solutions_1.0_all.deb && \
  apt-get -qq update && \
  apt-get -y -qq install esl-erlang=1:21.0 && \
  rm erlang-solutions_1.0_all.deb && \
  locale-gen "en_US.UTF-8" && \
  wget https://github.com/elixir-lang/elixir/archive/v1.8.1.tar.gz && \
  tar xzf v1.8.1.tar.gz && \
  cd elixir-1.8.1 && \
  make clean install && \
  cd .. && \
  rm v1.8.1.tar.gz && \
  rm -r elixir* && \
  curl -sL https://deb.nodesource.com/setup_10.x > setup_10.x && \
  bash setup_10.x && \
  apt-get -qq update && \
  apt-get -y -qq install nodejs && \
  npm install -g yarn
