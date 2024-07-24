#!/usr/bin/env bash
# exit on error
set -o errexit

# Install dependencies
bundle install

# Run database migrations
bundle exec rake db:migrate

# Seed the database
bundle exec rake db:seed
