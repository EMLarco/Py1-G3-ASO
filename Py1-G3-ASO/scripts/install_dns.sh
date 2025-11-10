#!/bin/bash
set -e
echo "Installing Bind9 and configuring zones..."
apt update && apt install -y bind9 bind9utils dnsutils
cp /root/config/db.lab.internal /etc/bind/db.lab.internal
cp /root/config/db.10.10.10.rev /etc/bind/db.10.10.10.rev
cp /root/config/named.conf.local /etc/bind/named.conf.local
systemctl restart bind9 || named -g -c /etc/bind/named.conf
systemctl enable bind9 || true
echo "Done: DNS installed."
