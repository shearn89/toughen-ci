#!/bin/bash -e

echo 'cleaning directory'
rm -rf builds
echo 'checking syntax'
packer validate *.json
echo 'building'
packer build *.json

echo 'testing'
vagrant destroy -f
vagrant up
