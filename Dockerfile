FROM ruby:latest

ENV HOME /Users/nomar/Documents/workspace_rails/dossier

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR $HOME

# Install gems
ADD Gemfile* $HOME/
RUN bundle install

# Add the app code
ADD . $HOME

# Default command
CMD ["rails", "server", "--binding", "0.0.0.0”]