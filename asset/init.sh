#!/bin/bash
cd /site
bundle install
chown rails:rails /site -R
sudo -u rails -H bundle exec rails s -b 0.0.0.0