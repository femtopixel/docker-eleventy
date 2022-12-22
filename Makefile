VERSION ?= v2.0.0-canary.22
FULLVERSION ?= v2.0.0-canary.22
CACHE ?= --no-cache=1
.PHONY: all build publish latest
archs ?= amd64 arm32v6 arm64v8
all: build publish latest
qemu-arm-static:
	cp /usr/bin/qemu-arm-static .
qemu-aarch64-static:
	cp /usr/bin/qemu-aarch64-static .
build: qemu-aarch64-static qemu-arm-static
	$(foreach arch,$(archs), \
		cat Dockerfile | sed "s/FROM node/FROM ${arch}\/node/g" > .Dockerfile; \
		docker build -t femtopixel/eleventy:${VERSION}-$(arch) --build-arg VERSION=${VERSION}-$(arch) ${CACHE} -f .Dockerfile .;\
	)
publish:
	docker push femtopixel/eleventy -a
	cat manifest.yml | sed "s/\$$VERSION/${VERSION}/g" > manifest.yaml
	cat manifest.yaml | sed "s/\$$FULLVERSION/${FULLVERSION}/g" > manifest2.yaml
	mv manifest2.yaml manifest.yaml
	manifest-tool push from-spec manifest.yaml
latest:
	FULLVERSION=latest VERSION=${VERSION} make publish

