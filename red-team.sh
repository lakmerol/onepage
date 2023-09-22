#!/bin/bash


# Check if /tmp/onepage folder exists
if [ ! -d "/tmp/onepage" ]; then
  # If it doesn't exist, clone the GitHub repository
  git clone https://github.com/lakmerol/onepage.git /tmp/onepage
fi

cd /tmp/onepage

git pull

sed -i "s/ISIM/$1/g" index.html
sed -i "s/EPOSTA/$2/g" index.html

cp -r * /var/www/html/

