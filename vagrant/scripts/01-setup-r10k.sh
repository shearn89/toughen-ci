#!/bin/bash

if [[ $EUID != 0 ]]
then
    echo 'must run as root'
    exit 1
fi

yum install -y ruby rubygems
echo 'gem: --no-document' > /etc/gemrc
gem install r10k
