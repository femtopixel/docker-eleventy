VERSION ?= v3.0.1-alpha.5
CACHE ?= --no-cache=1

.PHONY: all build publish
all: build publish
build:
	docker buildx build --platform linux/arm/v7,linux/arm64/v8,linux/amd64 ${PUSH} --build-arg VERSION=${VERSION} --tag femtopixel/eleventy --tag femtopixel/eleventy:${VERSION} ${CACHE} .
publish:
	PUSH=--push CACHE= make build
