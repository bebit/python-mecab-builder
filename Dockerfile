FROM python:3.10-slim-buster
RUN apt-get update > /dev/null && apt-get install -y --no-install-recommends \
    build-essential=12.6 \
    curl=7.64.0-4+deb10u5 \
    file=1:5.35-4+deb10u2 \
    git=1:2.20.1-2+deb10u3 \
    default-libmysqlclient-dev=1.0.5 \
    mecab=0.996-6 \
    mecab-ipadic-utf8=2.7.0-20070801+main-2.1 \
    libmecab-dev=0.996-6 \
    swig=3.0.12-2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

FROM ghcr.io/bebit/python-mecab-builder:4.1 as builder
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git && \
    mecab-ipadic-neologd/bin/install-mecab-ipadic-neologd -y -n -p /var/lib/mecab/dic/mecab-ipadic-neologd
