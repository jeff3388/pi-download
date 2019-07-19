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

sudo apt-get install iceweasel
sudo apt-get install xvfb
pip install selenium
pip install PyVirtualDisplay
pip install xvfbwrapper

wget https://github.com/mozilla/geckodriver/releases/download/v0.19.1/geckodriver-v0.19.1-arm7hf.tar.gz
tar -xf geckodriver-v0.19.1-arm7hf.tar.gz
rm geckodriver-v0.19.1-arm7hf.tar.gz
sudo chmod a+x geckodriver
sudo mv geckodriver /usr/local/bin/

pip install beautifulsoup4
pip install fake-useragent
fi