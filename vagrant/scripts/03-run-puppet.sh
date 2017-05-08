#!/bin/bash

if [[ $EUID != 0 ]]
then
    echo 'must run as root'
    exit 1
fi

r10k puppetfile purge
r10k puppetfile install

puppet apply
