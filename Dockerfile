FROM node:alpine3.14 as builder

COPY qemu-*-static /usr/bin/

FROM builder

ARG VERSION=v3.0.0-alpha.5
LABEL maintainer="Jay MOULIN <https://jaymoulin.me/femtopixel/docker-eleventy> <https://twitter.com/MoulinJay>"
LABEL version="${VERSION}"

RUN npm add -g npm @11ty/eleventy
WORKDIR /app
ENTRYPOINT ["eleventy"]
