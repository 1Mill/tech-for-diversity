FROM ruby:2.5-alpine

RUN apk add --update \
  build-base \
  postgresql-dev \
  tzdata

RUN mkdir /app
WORKDIR /app

COPY Gemfile* ./
RUN bundle install

COPY . .
