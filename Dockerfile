# syntax=docker/dockerfile:1
FROM nullstone/rails:ruby3.1

ENV RAILS_ENV production

# Install packages
COPY Gemfile* .
RUN gem install bundler
RUN bundle install

# Copy in code
COPY . .
