ARG PREFIX=docker.io
ARG VERSION=latest

FROM $PREFIX/vectorim/element-web:$VERSION

COPY ./config.json /app/config.json
