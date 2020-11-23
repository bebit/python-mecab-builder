FROM python:3.7-buster
RUN apt-get update > /dev/null && apt-get install -y --no-install-recommends \
    build-essential=12.6 \
    curl=7.64.0-4+deb10u1 \
    file=1:5.35-4+deb10u1 \
    git=1:2.20.1-2+deb10u3 \
    default-libmysqlclient-dev=1.0.5 \
    mecab=0.996-6 \
    mecab-ipadic-utf8=2.7.0-20070801+main-2.1 \
    libmecab-dev=0.996-6 \
    swig=3.0.12-2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
