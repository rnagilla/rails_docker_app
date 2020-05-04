#get docker image of ruby version
FROM ruby:2.6.3-slim

#install rails dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs libsqlite3-dev

# create folder myapp and cd into it
RUN mkdir /myapp
WORKDIR /myapp

#copy gemfile and lock from root to myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

#install gems
RUN bundle install

#copy whole app
copy . /myapp
