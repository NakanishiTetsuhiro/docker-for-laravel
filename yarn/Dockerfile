FROM node:10-alpine
LABEL maintainer "TETSU<kaoru6strings@gmail.com>"

RUN mkdir -p /app
WORKDIR /app

RUN apk --no-cache update && \
    apk --no-cache add make bash g++ zlib-dev libpng-dev python && \
    rm -fr /var/cache/apk/*

RUN npm install -g npm && \
    npm install -g yarn && \
    npm config set scripts-prepend-node-path true

ENTRYPOINT ["yarn"]
