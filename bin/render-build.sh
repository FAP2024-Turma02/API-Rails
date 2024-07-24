#!/usr/bin/env bash
# exit on error
set -o errexit

# Install dependencies
bundle install --trace
# Run database migrations
rails db:migrate

# Seed the database
rails db:seed
