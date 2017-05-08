#!/bin/bash -e

echo 'cleaning directory'
rm -rf build
echo 'checking syntax'
packer validate *.json
echo 'building'
packer build *.json
