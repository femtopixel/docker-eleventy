FROM node:alpine3.12 as builder

COPY qemu-*-static /usr/bin/

FROM builder

ARG VERSION=2.0.0-canary.14
LABEL maintainer="Jay MOULIN <https://jaymoulin.me/femtopixel/docker-eleventy> <https://twitter.com/MoulinJay>"
LABEL version="v${VERSION}"

RUN npm add -g npm @11ty/eleventy@${VERSION}
WORKDIR /app
ENTRYPOINT ["eleventy"]
