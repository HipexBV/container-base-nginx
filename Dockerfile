FROM nginx:stable-alpine AS build

# For latest build deps, see https://github.com/nginxinc/docker-nginx/blob/master/mainline/alpine/Dockerfile
RUN apk add --no-cache --virtual .build-deps \
    gcc \
    libc-dev \
    make \
    openssl-dev \
    pcre-dev \
    zlib-dev \
    linux-headers \
    libxslt-dev \
    gd-dev \
    geoip-dev \
    perl-dev \
    libedit-dev \
    mercurial \
    bash \
    alpine-sdk \
    findutils

# Set version
ENV NGINX_MODULE_ECHO_VERSION=0.62

# Prepare build directory
RUN mkdir /usr/src && cd /usr/src \
    # Download echo module
    && wget "https://github.com/openresty/echo-nginx-module/archive/v${NGINX_MODULE_ECHO_VERSION}.tar.gz" \
    && tar -xzvf "v${NGINX_MODULE_ECHO_VERSION}.tar.gz" \

    # Download nginx
    && wget "http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz" \
    && tar -xzvf "nginx-${NGINX_VERSION}.tar.gz" \

    # Build
    && export NGINX_CONFIG_ARGS=$(nginx -V 2>&1 | sed -n -e 's/^.*arguments: //p') \
    && cd "/usr/src/nginx-${NGINX_VERSION}" \
    && ./configure \
        --with-compat \
        "${NGINX_CONFIG_ARGS}" \
        --add-dynamic-module=/usr/src/echo-nginx-module-${NGINX_MODULE_ECHO_VERSION} \
    && make modules

FROM nginxinc/nginx-unprivileged:stable-alpine
LABEL maintainer="Hipex.io <info@hipex.io>"

ENV PHP_BACKEND="localhost"

# Copy build files
COPY --from=build "/usr/src/nginx-${NGINX_VERSION}/objs/ngx_http_echo_module.so" /usr/local/nginx/modules/ngx_echo_module.so

# Copy config files
COPY files/. /

# Setup root
USER root

# Install runtime tools
RUN apk --update --no-cache add --virtual .runtime-deps \
    bash \
    gettext \
    rsync

# Update nginx user id
RUN apk --update --no-cache add --virtual .build-deps shadow \
    && usermod -u 5000 nginx \
    && groupmod -g 5000 nginx \
    && apk del .build-deps

# Giver permissions to app config environment
RUN chown -Rf 5000:5000 /etc/nginx

# Prepare environment
RUN mkdir /app \
    && chown -Rf 5000:5000 /app

USER nginx
WORKDIR /app
ENTRYPOINT ["hipex-entry-point.sh"]
CMD ["nginx", "-g", "daemon off;"]
