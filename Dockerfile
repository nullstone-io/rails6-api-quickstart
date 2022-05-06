# syntax=docker/dockerfile:1
FROM nullstone/rails

ENV RAILS_ENV production

# Install packages
COPY Gemfile* .
RUN gem install bundler
RUN bundle install

# Copy in code
COPY . .
