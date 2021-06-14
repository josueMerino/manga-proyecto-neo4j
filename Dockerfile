FROM ruby:2.7.3

RUN apt-get update -qq && apt-get install -y build-essential nodejs libssl1.1
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update -qq && apt-get install -y yarn
RUN wget https://github.com/neo4j-drivers/seabolt/releases/download/v1.7.4/seabolt-1.7.4-Linux-ubuntu-18.04.deb
RUN dpkg -i seabolt-1.7.4-Linux-ubuntu-18.04.deb
RUN rm seabolt-1.7.4-Linux-ubuntu-18.04.deb
RUN apt-get install -y git cmake libssl-dev
RUN mkdir /manga


WORKDIR /manga

COPY Gemfile /manga/Gemfile
COPY Gemfile.lock /manga/Gemfile.lock

RUN bundle install

COPY . /manga
