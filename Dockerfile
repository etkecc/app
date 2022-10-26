ARG VERSION=latest

FROM vectorim/element-web:$VERSION

COPY ./config.json /app/config.json
