#!/bin/sh
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install build-essential libsqlite3-dev sqlite3 bzip2 libbz2-dev
wget https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tgz
tar zxvf Python-3.6.1.tgz
cd Python-3.6.1
sudo ./configure && sudo make && sudo make install
sudo mv /usr/bin/python /usr/bin/python3.4.2
sudo ln -s /usr/local/bin/python3 /usr/bin/python

pip install beautifulsoup4
pip install fake-useragent
pip install selenium