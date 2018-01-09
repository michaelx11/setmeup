#!/bin/bash

aws ec2 describe-instances --filters=Name=instance-state-name,Values=running  --query 'Reservations[0].Instances[*].NetworkInterfaces[0].Association.PublicDnsName'
