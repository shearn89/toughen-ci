#!/bin/bash -e

sudo yum -y update
sudo rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
sudo yum install -y puppet
