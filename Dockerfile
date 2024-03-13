FROM ruby:3.3-slim

RUN apt-get update -qq && apt-get install -y build-essential
WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .
CMD ["ruby", "app.rb", "-o", "0.0.0.0"]
