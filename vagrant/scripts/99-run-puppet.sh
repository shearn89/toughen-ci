#!/bin/bash

if [[ $EUID != 0 ]]
then
    echo 'must run as root.'
    exit 1
fi

puppet apply -v --modulepath=/home/vagrant/modules /home/vagrant/site.pp
