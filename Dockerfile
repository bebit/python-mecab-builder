FROM python:3.10-slim-bookworm as dictionary-builder
RUN apt-get update > /dev/null && apt-get install -y --no-install-recommends \
    build-essential=12.9 \
    curl=7.88.1-10+deb12u5 \
    file=1:5.44-3 \
    git=1:2.39.2-1.1 \
    mecab-ipadic-utf8=2.7.0-20070801+main-3 \
    mecab=0.996-14+b14 \
    libmecab-dev=0.996-14+b14 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git && \
    mecab-ipadic-neologd/bin/install-mecab-ipadic-neologd -y -n -p /var/lib/mecab/dic/mecab-ipadic-neologd

FROM python:3.10-slim-bookworm as mecab
COPY --from=dictionary-builder /var/lib/mecab  /var/lib/mecab
