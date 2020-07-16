FROM python:3.5-slim-stretch
RUN apt-get update > /dev/null && apt-get install -y --reinstall build-essential && \
    apt-get install -y --no-install-recommends \
    curl \
    file \
    git \
    default-libmysqlclient-dev \
    mecab \
    mecab-ipadic-utf8 \
    libmecab-dev \
    swig