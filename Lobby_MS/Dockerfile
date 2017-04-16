FROM ruby:2.4.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /Lobby_MS
WORKDIR /Lobby_MS

ADD Gemfile /Lobby_MS/Gemfile
ADD Gemfile.lock /Lobby_MS/Gemfile.lock

RUN bundle install

ADD . /Lobby_MS