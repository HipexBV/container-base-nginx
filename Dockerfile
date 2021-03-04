ARG GEOIPUPDATE_VERSION=v4

###
# Build nginx modules
###
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
    findutils \
    libmaxminddb-dev

# Install goss testing
RUN curl -fsSL https://goss.rocks/install | sh

# Set version
ENV NGINX_MODULE_ECHO_VERSION=0.62
ENV NGINX_MODULE_GEOIP_VERSION=3.3

# Prepare build directory
RUN mkdir /usr/src && cd /usr/src \
    # Download source files
    && curl -fL -o "/usr/src/module-echo.tar.gz" "https://github.com/openresty/echo-nginx-module/archive/v${NGINX_MODULE_ECHO_VERSION}.tar.gz" \
    && tar -xvf "module-echo.tar.gz" \
    && curl -fL -o "/usr/src/module-geoip.tar.gz" "https://github.com/leev/ngx_http_geoip2_module/archive/${NGINX_MODULE_GEOIP_VERSION}.tar.gz" \
    && tar -xvf "module-geoip.tar.gz" \
    && curl -fL -o "/usr/src/nginx.tar.gz" "http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz" \
    && tar -xvf "nginx.tar.gz" \

    # Build
    && export NGINX_CONFIG_ARGS=$(nginx -V 2>&1 | sed -n -e 's/^.*arguments: //p') \
    && cd "/usr/src/nginx-${NGINX_VERSION}" \
    && ./configure \
        --with-compat \
        "${NGINX_CONFIG_ARGS}" \
        --add-dynamic-module=/usr/src/echo-nginx-module-${NGINX_MODULE_ECHO_VERSION} \
        --add-dynamic-module=/usr/src/ngx_http_geoip2_module-${NGINX_MODULE_GEOIP_VERSION} \
    && make modules

###
# Download latest maxmind database
###
FROM maxmindinc/geoipupdate:${GEOIPUPDATE_VERSION} AS geoip-download

ENV GEOIPUPDATE_ACCOUNT_ID=287057
ENV GEOIPUPDATE_LICENSE_KEY=t5h6KXaXBCn5Owgj
ENV GEOIPUPDATE_EDITION_IDS="GeoLite2-City GeoLite2-Country"

RUN mkdir /usr/share/GeoIP && /usr/bin/entry.sh

###
# Copy files to final image
###
FROM nginxinc/nginx-unprivileged:stable-alpine
LABEL maintainer="Hipex.io <info@hipex.io>"

ENV PHP_BACKEND="localhost"
ENV DYNAMIC_REALIP_TARGETS="https://www.cloudflare.com/ips-v4;https://www.cloudflare.com/ips-v6"

# Setup root
USER root

# Install test toolkit
RUN curl -fsSL https://goss.rocks/install | sh

# Install runtime tools
RUN apk --update --no-cache add --virtual .runtime-deps \
    bash \
    gettext \
    rsync \
    libmaxminddb

# Copy build files
COPY --from=build "/usr/src/nginx-${NGINX_VERSION}/objs/*_module.so" /usr/local/nginx/modules/
COPY --from=geoip-download "/usr/share/GeoIP" "/usr/share/GeoIP"
COPY files/. /

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
