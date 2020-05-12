FROM nginxinc/nginx-unprivileged:stable-alpine
LABEL maintainer="Hipex.io <info@hipex.io>"

# Copy config files
COPY files/. /

# Setup root
USER root

# Install runtime tools
RUN apk --update --no-cache add --virtual .runtime-deps \
    bash

# Update nginx user id
RUN apk --update --no-cache add --virtual .build-deps shadow \
    && usermod -u 5000 nginx \
    && groupmod -g 5000 nginx \
    && apk del .build-deps

# Giver permissions to app config environment
RUN chown 5000:5000 /etc/nginx/app

# Prepare environment
RUN mkdir /app \
    && chown 5000:5000 /app

USER nginx

ENTRYPOINT ["hipex-entry-point.sh"]
CMD ["nginx", "-g", "daemon off;"]
