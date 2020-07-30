FROM node:alpine

ARG VERSION=v0.11.0
LABEL maintainer="Jay MOULIN <https://jaymoulin.me/femtopixel/docker-eleventy> <https://twitter.com/MoulinJay>"
LABEL version="${VERSION}"

RUN yarn global add @11ty/eleventy
WORKDIR /app
ENTRYPOINT ["eleventy"]
