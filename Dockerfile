FROM node:alpine as builder

COPY qemu-*-static /usr/bin/

FROM builder

ARG VERSION=v2.0.0-canary.19
LABEL maintainer="Jay MOULIN <https://jaymoulin.me/femtopixel/docker-eleventy> <https://twitter.com/MoulinJay>"
LABEL version="${VERSION}"

RUN npm add -g npm @11ty/eleventy
WORKDIR /app
ENTRYPOINT ["eleventy"]
