#!/bin/bash
set -e
echo "Installing vsftpd..."
apt update && apt install -y vsftpd
cp /root/config/vsftpd.conf /etc/vsftpd.conf
systemctl restart vsftpd
systemctl enable vsftpd || true
echo "Done: FTP installed."
