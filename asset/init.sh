#!/bin/bash
cd /site
which rails
if [ $? -eq 1 ]; then
  bundle install
fi
chown rails:rails /site -R
sudo -u rails -H bundle exec rails s -b 0.0.0.0
