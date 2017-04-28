# docker-gitbook

[![Docker Build Status](https://img.shields.io/docker/build/yanqd0/gitbook.svg)](https://hub.docker.com/r/yanqd0/gitbook/builds/)
[![Docker Automated build](https://img.shields.io/docker/automated/yanqd0/gitbook.svg)](https://hub.docker.com/r/yanqd0/gitbook/builds/)
[![Docker Stars](https://img.shields.io/docker/stars/yanqd0/gitbook.svg)](https://hub.docker.com/r/yanqd0/gitbook/)
[![Docker Pulls](https://img.shields.io/docker/pulls/yanqd0/gitbook.svg)](https://hub.docker.com/r/yanqd0/gitbook/)

The smallest gitbook docker image built from Alpine.

## Install

```sh
docker pull yanqd0/gitbook
```

## Usage

There are two simple ways to use it, `docker run` or `docker-compose up`.

In the gitbook project, execute `docker` commands.

```sh
docker run -v $PWD:/srv/gitbook -p 4000:4000 yanqd0/gitbook
```

I never run it like this, except for debug. I always prefer [docker-compose], which can be easily [installed] and used.

You can write your `docker-compose.yml` like this:

```yaml
version: '2'
services:
  gitbook:
    image: yanqd0/gitbook
    volumes:
      - .:/srv/gitbook
    ports:
      - 4000:4000
```

And then, run `docker-compose up`.

There is a verified [example.docker-compose.yml].

[![Build Status](https://travis-ci.org/yanqd0/docker-gitbook.svg?branch=master)](https://travis-ci.org/yanqd0/docker-gitbook)

[docker-compose]:https://github.com/docker/compose
[installed]:https://docs.docker.com/compose/install/
[example.docker-compose.yml]:https://github.com/yanqd0/docker-gitbook/blob/master/example.docker-compose.yml

## Version

| Name        | Version |
| ----        | ------- |
| node        | 7.9.0   |
| npm         | 4.2.0   |
| GitBook CLI | 2.3.0   |
| GitBook     | 3.2.2   |

## License

[![License](https://img.shields.io/github/license/yanqd0/docker-gitbook.svg)](https://github.com/yanqd0/docker-gitbook/blob/master/LICENSE)

This repository is inspired by [fellah/gitbook].

The base image is changed to Alpine [node], which makes it much smaller.
The CMD is changed to `gitbook install && gitbook serve`, which will install [GitBook Plugins] before served.

> The MIT License (MIT)
>
> Copyright (c) 2017 yanqd0@outlook.com

[fellah/gitbook]:https://hub.docker.com/r/fellah/gitbook/~/dockerfile/
[node]:https://hub.docker.com/_/node/
[GitBook Plugins]:https://plugins.gitbook.com/
