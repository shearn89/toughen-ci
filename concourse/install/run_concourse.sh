#!/bin/bash

if [[ $EUID != 0 ]]
then
  echo 'must run as root.'
  exit 2
fi

concourse web \
  --basic-auth-username myuser \
  --basic-auth-password mypass \
  --session-signing-key /etc/concourse/keys/session_signing_key \
  --tsa-host-key /etc/concourse/keys/tsa_host_key \
  --tsa-authorized-keys /etc/concourse/keys/authorized_worker_keys \
  --external-url http://ci.example.com \
  --postgres-data-source postgres://root:concourse@localhost/atc
