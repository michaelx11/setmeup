#!/bin/bash

set -ex

aws ec2 request-spot-instances --cli-input-json="$(cat config.json)"
