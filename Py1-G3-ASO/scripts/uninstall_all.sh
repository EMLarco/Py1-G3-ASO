#!/bin/bash
set -e
echo "Stopping services..."
systemctl stop bind9 isc-dhcp-server apache2 vsftpd || true
echo "Removing packages (apt-get remove)..."
apt remove -y bind9 isc-dhcp-server apache2 vsftpd || true
echo "Done."
