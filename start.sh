#!/bin/sh

set -e

bundle exec rails db:setup
bundle exec rails db:migrate
bundle exec rails packages:update 

bundle exec rails s -b 0.0.0.0 -p 3000