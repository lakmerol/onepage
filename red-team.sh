#!/bin/bash


if [ ! -d "/tmp/onepage" ]; then
  git clone https://github.com/lakmerol/onepage.git /tmp/onepage
fi

cd /tmp/onepage

git pull

sed -i "s/ISIM/$1/g" index.html
sed -i "s/EPOSTA/$2/g" index.html

sudo cp -r * /var/www/html/

echo "Script run automaticly"