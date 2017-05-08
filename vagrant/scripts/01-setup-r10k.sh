#!/bin/bash

if [[ $EUID != 0 ]]
then
    echo 'must run as root'
    exit 1
fi

hostnamectl set-hostname vagrant.local.net

yum install -y ruby rubygems git
echo 'gem: --no-document' > /etc/gemrc
gem install r10k
