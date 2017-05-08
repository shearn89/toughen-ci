#!/bin/bash

echo "downloading jq"
curl -s -L -O https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 2>/dev/null
chmod +x jq-linux64
sudo mv jq-linux64 /usr/bin/jq
echo "done"

echo "downloading release archive"
RELEASE_URL=$(curl -s -L https://api.github.com/repos/shearn89/puppet-toughen/tags | jq --raw-output '.[0].tarball_url')
curl -s -O -J -L $RELEASE_URL 2>/dev/null
echo "download complete"
