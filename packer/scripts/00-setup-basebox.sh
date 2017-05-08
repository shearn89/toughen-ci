#!/bin/bash

curl -L -O https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub
mkdir -m 0700 .ssh
mv vagrant.pub .ssh
cat .ssh/*.pub > .ssh/authorized_keys
chmod 600 .ssh/*

sudo sed -i '/UseDNS/ s/yes/no/' /etc/ssh/sshd_config
sudo sed -i 's/#UseDNS/UseDNS/' /etc/ssh/sshd_config

sudo mkdir -p /media/cdrom
sudo mount /dev/cdrom /media/cdrom
sudo sh /media/cdrom/VBoxLinuxAdditions.run
sudo umount /media/cdrom
