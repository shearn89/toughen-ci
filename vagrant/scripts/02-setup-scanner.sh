#!/bin/bash

if [[ $EUID != 0 ]]
then
    echo 'must run as root'
    exit 1
fi

yum install -y oscap-scanner scap-security-guide

echo 'sudo oscap xccdf eval --profile xccdf_org.ssgproject.content_profile_C2S --results results.xml --report /home/vagrant/reports/report.html /usr/share/xml/scap/ssg/content/ssg-centos7-ds.xml' > run-scap-scan.sh
chmod +x run-scap-scan.sh
