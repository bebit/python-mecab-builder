# python-mecab-builder

`Python 3.7` with `mecab` builder dependencies.

## How to use
In your `DOCKERFILE` specify your image with a release build as its tag.

e.g. To use this image with the `release-1.1` build you would include something like below:
```yml
    docker:
      - image: bebit/python-mecab-builder:release-1.1
```

## Updating image dependencies

E.g. If you wanted to change from `python 3.7.9` to `python 3.5.6` you would just update the image tag like below:

```diff
- FROM python:3.7-slim-stretch
+ FROM python:3.5-slim-stretch
```

Then push your changes to a branch on the `beBit` repo and then your branch name is served as an image tag. e.g. Your branch name `python_mecab_python-3.5.6` will be written as `bebit/python-mecab-builder:python_mecab_python-3.5.6` in your `DOCKERFILE`