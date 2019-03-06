# Dockerfile for certbot (with route53 plugin)
FROM ubuntu:18.04

LABEL maintainer="Jakezp <jakezp@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

# Install and update packages
RUN apt-get update \
    && apt-get install certbot python3-certbot-dns-route53 -yq \
    && rm -rf /var/lib/apt/lists/*

ENV HOME /root
USER root

# Expose volumes & ports
VOLUME ["/root/", "/etc/letsencrypt/"]
