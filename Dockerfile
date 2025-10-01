FROM python:3.12-slim-bookworm
RUN apt-get update > /dev/null && apt-get install -y --no-install-recommends \
    build-essential=12.9 \
    curl=7.88.1-10+deb12u14 \
    file=1:5.44-3 \
    git=1:2.39.5-0+deb12u2 \
    default-libmysqlclient-dev=1.1.0 \
    mecab=0.996-14+b14 \
    mecab-ipadic-utf8=2.7.0-20070801+main-3 \
    libmecab-dev=0.996-14+b14 \
    swig=4.1.0-0.2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
