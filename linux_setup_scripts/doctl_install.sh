#!/bin/bash

set -ex

curl -OL https://github.com/digitalocean/doctl/releases/download/v1.6.1/doctl-1.6.1-linux-amd64.tar.gz
tar -xvf doctl-1.6.1-linux-amd64.tar.gz
sudo mv doctl /usr/local/bin/
rm doctl-1.6.1-linux-amd64.tar.gz
