#!/bin/bash -e

curl -O https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
chmod +x jq-linux64
mv jq-linux64 /usr/bin/jq

RELEASE_URL=$(curl https://api.github.com/repos/shearn89/puppet-toughen/tags | jq --raw-output '.[0].tarball_url')
curl -s -O -J -L $RELEASE_URL

