![logo](logo.png)

Eleventy - Docker Image
=======================

[![latest release](https://img.shields.io/github/release/femtopixel/docker-eleventy.svg "latest release")](http://github.com/femtopixel/docker-eleventy/releases)
[![Docker Pulls](https://img.shields.io/docker/pulls/femtopixel/eleventy.svg)](https://hub.docker.com/r/femtopixel/eleventy/)
[![Docker Stars](https://img.shields.io/docker/stars/femtopixel/eleventy.svg)](https://hub.docker.com/r/femtopixel/eleventy/)
[![PayPal donation](https://github.com/jaymoulin/jaymoulin.github.io/raw/master/ppl.png "PayPal donation")](https://www.paypal.me/jaymoulin)
[![Buy me a coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png "Buy me a coffee")](https://www.buymeacoffee.com/jaymoulin)
[![Buy me a coffee](https://ko-fi.com/img/githubbutton_sm.svg "Buy me a coffee")](https://www.ko-fi.com/jaymoulin)

(This product is available under a free and permissive license, but needs financial support to sustain its continued improvements. In addition to maintenance and stability there are many desirable features yet to be added.)

THIS REPOSITORY IS AUTO-UPDATED BY [GITHUB-RELEASE-NOTIFIER](https://github.com/femtopixel/github-release-notifier) (https://github.com/femtopixel/github-release-notifier)

Description
-----------

The purpose of this image is to use [eleventy (static site builder)](https://github.com/11ty/eleventy) easily thanks to Docker. 

Docker Usage
------------

Dev :

```
docker run --rm -v /path/to/your/site:/app --name eleventy -p 8080:8080 femtopixel/eleventy --serve
```
Production :

```
docker run --rm -v /path/to/your/site:/app --name eleventy femtopixel/eleventy --output=/app/_site/
```

