FROM ruby:2.5.1

RUN gem update --system
RUN gem install bundler --version "2.0.2"

RUN apt-get update -qq && apt-get install -y build-essential nodejs

RUN mkdir /dossier
WORKDIR /dossier

COPY Gemfile /dossier/Gemfile
COPY Gemfile.lock /dossier/Gemfile.lock
COPY .gemrc /dossier/.gemrc

# Install bundle
RUN bundle update --bundler
#RUN gem install bundle && bundle install
RUN gem list bundler
#RUN gem sources -a http://rubygems.org
RUN bundle install
COPY . /dossier

# Start the main process
#CMD ["rails", "server", "-b", "0.0.0.0"]
