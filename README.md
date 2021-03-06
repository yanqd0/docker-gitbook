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

Docker Hub: <https://hub.docker.com/r/yanqd0/gitbook/>

## Usage

There are two simple ways to use it, `docker run` or `docker-compose up`.

### docker run

In the gitbook project, execute the command below:

```sh
docker run -v $PWD:/srv/gitbook -p 4000:4000 yanqd0/gitbook
```

If your current directory is not your gitbook project, you can replace `$PWD` with the path.

### docker-compose up

It is not a good way to use `docker run` in your production environment.

I prefer to use a [docker-compose.yml file].

You can write a `docker-compose.yml` in your gitbook project like this:

```yaml
version: '3'
services:
  gitbook:
    image: yanqd0/gitbook
    volumes:
      - .:/srv/gitbook
    ports:
      - 4000:4000
```

And then, run `docker-compose up -d`.

There is a verified [docker-compose.yml] for example.

[![Build Status](https://travis-ci.org/yanqd0/docker-gitbook.svg?branch=master)](https://travis-ci.org/yanqd0/docker-gitbook)

[docker-compose.yml file]:https://docs.docker.com/compose/compose-file/
[docker-compose.yml]:https://github.com/yanqd0/docker-gitbook/blob/master/docker-compose.yml

## Version

| Name        | Version |
| ----        | ------- |
| node        | 8.4.0   |
| npm         | 5.3.0   |
| GitBook CLI | 2.3.2   |
| GitBook     | 3.2.3   |

It is welcome to remind me about updates with [issues].

[issues]:https://github.com/yanqd0/docker-gitbook/issues/new

## Size

| Status     | Size                                |
| ------     | ----                                |
| Compressed | [![][microbadger.svg]][microbadger] |
| Extracted  | 190 MB                              |

[microbadger.svg]:https://images.microbadger.com/badges/image/yanqd0/gitbook.svg
[microbadger]:https://microbadger.com/images/yanqd0/gitbook

## License

[![License](https://img.shields.io/github/license/yanqd0/docker-gitbook.svg)](https://github.com/yanqd0/docker-gitbook/blob/master/LICENSE)

This repository is inspired by [fellah/gitbook].

The base image is changed to Alpine [node], which makes it much smaller.
The CMD is changed to `gitbook install && gitbook serve`, which will install [GitBook Plugins] before served.

> MIT License
>
> Copyright (c) 2017 Yan QiDong <yanqd0@outlook.com>

[fellah/gitbook]:https://hub.docker.com/r/fellah/gitbook/
[node]:https://hub.docker.com/_/node/
[GitBook Plugins]:https://plugins.gitbook.com/
