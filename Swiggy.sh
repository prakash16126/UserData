#! /bin/bash
sudo -i
apt update
apt install nginx  -y
git clone https://github.com/karishma1521success/swiggy-clone.git
mv swiggy-clone/* /var/www/html/
