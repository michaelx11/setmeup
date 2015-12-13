#!/bin/bash

set -e -u -o pipefail

# Path to the CA public cert
ca_cert=./my_ca_cert.pem

VerifyCert () {
  result=`openssl verify -CAfile my_ca_cert.pem`
  if [[ "$result" == "stdin: OK" ]];
  then
    echo "Passed"
    exit 0
  else
    echo "Failed"
    exit 1
  fi
}

if read -t 0;
then 
  VerifyCert
else
  echo "Failed: No input provided"
  exit 1
fi
