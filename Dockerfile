FROM python:3.9-slim-buster
RUN apt-get update > /dev/null && apt-get install -y --no-install-recommends \
    build-essential=12.3 \
    curl=7.52.1-5+deb9u11 \
    file=1:5.30-1+deb9u3 \
    git=1:2.11.0-3+deb9u7 \
    default-libmysqlclient-dev=1.0.2 \
    mecab=0.996-3.1 \
    mecab-ipadic-utf8=2.7.0-20070801+main-1 \
    libmecab-dev=0.996-3.1 \
    swig=3.0.10-1.1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

