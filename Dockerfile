FROM nginxinc/nginx-unprivileged:stable-alpine
LABEL maintainer="Hipex.io <info@hipex.io>"

# Copy config files
COPY files/. /

# Setup root
USER root

# Update nginx user id
RUN apk --update --no-cache add --virtual .build-deps shadow \
    && usermod -u 5000 nginx \
    && groupmod -g 5000 nginx \
    && apk del .build-deps

# Prepare environment
RUN mkdir /app \
    && chown 5000:5000 /app

USER nginx
