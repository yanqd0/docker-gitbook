FROM node:7.9.0-alpine

MAINTAINER Yan QiDong <yanqd0@outlook.com>

ARG VERSION=3.2.2

LABEL version=$VERSION

RUN npm install --global gitbook-cli \
        && gitbook fetch ${VERSION} \
        && npm cache clear \
        && rm -rf /tmp/*

WORKDIR /srv/gitbook

VOLUME /srv/gitbook

EXPOSE 4000 35729

CMD /usr/local/bin/gitbook serve
