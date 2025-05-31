FROM node:18-alpine

ARG VERSION=v3.1.1-beta.3
ARG TARGETPLATFORM
LABEL maintainer="Jay MOULIN <https://jaymoulin.me/femtopixel/docker-eleventy>"
LABEL version="${VERSION}-${TARGETPLATFORM}"

RUN npm add -g npm @11ty/eleventy
WORKDIR /app
ENTRYPOINT ["eleventy"]
