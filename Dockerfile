ARG VERSION=latest

FROM ghcr.io/element-hq/element-web:$VERSION

COPY ./config.json /app/config.json
