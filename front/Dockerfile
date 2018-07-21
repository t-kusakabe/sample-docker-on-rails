FROM node:alpine

RUN apk update && \
    apk --no-cache add \
      build-base \
      libxml2-dev \
      libxslt-dev \
      linux-headers \
      tzdata

WORKDIR /app/front

RUN yarn
