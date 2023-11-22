FROM ruby:latest

RUN apt-get install \
    ruby-full \
    build-essential \
    zlib1g-dev

RUN gem install \
    jekyll \
    bundler