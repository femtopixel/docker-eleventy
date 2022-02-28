FROM node:alpine as builder

COPY qemu-*-static /usr/bin/

FROM builder

ARG VERSION=v1.0.1-canary.3
LABEL maintainer="Jay MOULIN <https://jaymoulin.me/femtopixel/docker-eleventy> <https://twitter.com/MoulinJay>"
LABEL version="${VERSION}"

RUN npm add -g @11ty/eleventy
WORKDIR /app
ENTRYPOINT ["eleventy"]
