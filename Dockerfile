ARG VERSION=latest

FROM vectorim/element-web:$VERSION as element-web
COPY ./config.json /app/config.json

FROM ghcr.io/static-web-server/static-web-server:2
ENV SERVER_ROOT=/public
ENV SERVER_PORT=8080
COPY --from=element-web /app /public
