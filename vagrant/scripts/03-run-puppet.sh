#!/bin/bash

r10k puppetfile purge
r10k puppetfile install

puppet apply
