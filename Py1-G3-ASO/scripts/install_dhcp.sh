#!/bin/bash
set -e
echo "Installing ISC DHCP server..."
apt update && apt install -y isc-dhcp-server
cp /root/config/dhcpd.conf /etc/dhcp/dhcpd.conf
echo 'INTERFACESv4="eth0"' > /etc/default/isc-dhcp-server
systemctl restart isc-dhcp-server
systemctl enable isc-dhcp-server || true
echo "Done: DHCP installed."
