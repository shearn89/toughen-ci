#!/bin/bash

echo 'purging local repo dir'
rm -rf ~/modules/toughen

echo 'checking puppetfile syntax'
r10k puppetfile check
echo 'purging old modules'
r10k puppetfile purge
echo 'installing modules'
r10k puppetfile install -v 

echo 'setup complete'
# puppet apply
