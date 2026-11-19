#!/bin/bash
set -e
echo "Installing Apache2 and deploying site..."
apt update && apt install -y apache2
cp -r /root/config/www/* /var/www/
cp /root/config/lab.conf /etc/apache2/sites-available/lab.conf
a2ensite lab.conf || true
systemctl reload apache2
systemctl enable apache2 || true
echo "Done: Web installed."
