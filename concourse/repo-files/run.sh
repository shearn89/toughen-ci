#!/bin/bash -e

pushd puppet-toughen
bundle install 
# bundle update
bundle exec rake test
popd
