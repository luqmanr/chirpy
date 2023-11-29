# FROM ruby:latest
FROM ruby:3.2.2

RUN apt-get install \
    ruby-full \
    build-essential \
    zlib1g-dev

RUN gem install \
    jekyll \
    bundler

RUN bundle