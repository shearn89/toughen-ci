#!/bin/bash

if [[ $EUID != 0 ]]
then
  echo "must run as root."
  exit 2
fi

sudo concourse worker \
  --work-dir /opt/concourse/worker \
  --tsa-host 127.0.0.1 \
  --tsa-public-key keys/tsa_host_key.pub \
  --tsa-worker-private-key keys/worker_key
