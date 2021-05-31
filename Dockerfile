FROM ruby:2.7.3
RUN apt-get update -qq && apt-get install -y build-essential nodejs
RUN mkdir /manga
WORKDIR /manga
ADD Gemfile /manga/Gemfile
ADD Gemfile.lock /manga/Gemfile.lock
RUN bundle install
ADD . /manga