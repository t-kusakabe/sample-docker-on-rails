FROM node:alpine

WORKDIR /app/front

RUN apk update && \
    apk --no-cache add \
      build-base \
      libxml2-dev \
      libxslt-dev \
      linux-headers \
      tzdata

WORKDIR /app/front

RUN yarn
