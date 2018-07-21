FROM node:alpine

WORKDIR /app/front

RUN apk update && \
    apk --no-cache add \
      build-base \
      libxml2-dev \
      libxslt-dev \
      linux-headers \
      tzdata

COPY package.json ./package.json
COPY yarn.lock ./yarn.lock

RUN yarn
