FROM node:18-alpine

ARG VERSION=v3.0.1-alpha.5
ARG TARGETPLATFORM
LABEL maintainer="Jay MOULIN <https://jaymoulin.me/femtopixel/docker-eleventy>"
LABEL version="${VERSION}-${TARGETPLATFORM}"

RUN npm add -g npm @11ty/eleventy
WORKDIR /app
ENTRYPOINT ["eleventy"]
