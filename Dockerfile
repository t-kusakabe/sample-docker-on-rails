FROM ruby:alpine

ARG APP_ROOT=/app
WORKDIR $APP_ROOT

RUN apk update && \
    apk --no-cache add \
      build-base \
      curl-dev \
      libxml2-dev \
      libxslt-dev \
      linux-headers \
      mysql-dev \
      nodejs \
      ruby-dev \
      tzdata \
      yaml \
      yaml-dev

COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock

RUN gem install bundler && \
    bundler install
