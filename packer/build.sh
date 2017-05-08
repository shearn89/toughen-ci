#!/bin/bash -e

echo 'checking syntax'
packer validate *.json
echo 'building'
packer build *.json
