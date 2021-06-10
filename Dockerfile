FROM ruby:2.7.3

RUN apt-get update -qq && apt-get install -y build-essential nodejs libssl1.1
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

# RUN rake neo4j:migrate