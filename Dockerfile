FROM nginx:stable-alpine
LABEL maintainer="Hipex.io <info@hipex.io>"

# Copy config files
COPY files/. /

# Prepare environment
RUN mkdir /app \
    && addgroup -S app -g 5000 \
    && adduser \
        -S \
        -h /app \
        -s /bin/shell \
        -u 5000 \
        app app \
    && chown app:app /app
