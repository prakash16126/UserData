#!/bin/bash
set -e
apt-get update -y
apt-get install -y nginx git
git clone https://github.com/prakash16126/AeroDine /tmp/aerodine
rm -rf /var/www/html/*
cp -r /tmp/aerodine/* /var/www/html/
if [ -f /var/www/html/foodorder.html ]; then
    mv /var/www/html/foodorder.html /var/www/html/index.html
fi
chown -R www-data:www-data /var/www/html/
chmod -R 755 /var/www/html/
systemctl enable nginx
systemctl restart nginx
