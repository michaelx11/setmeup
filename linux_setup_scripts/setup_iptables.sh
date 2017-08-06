#!/bin/bash

set -ex

iptables -X
iptables -F
iptables -P INPUT DROP
iptables -A INPUT -i lo -p all -j ACCEPT
iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT 
iptables -A INPUT -p tcp -m tcp --dport 443 -j ACCEPT 
iptables -A INPUT -p tcp -m tcp --dport 7777 -j ACCEPT  # SSH
iptables -A INPUT -j DROP
iptables -L -v
