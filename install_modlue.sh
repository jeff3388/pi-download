#!/bin/sh
sudo apt-get install openssl libssl-dev
sudo apt-get install libbz2-dev
sudo apt-get install libncurses5-dev
sudo apt-get install libncursesw5-dev
sudo apt-get install libdb-dev
sudo apt-get install libgdbm-dev
sudo apt-get install liblzma-dev
sudo apt-get install libsqlite3-dev
sudo apt-get install tk-dev
sudo apt-get install libreadline-dev
sudo apt-get install zlib1g-dev
sudo apt-get install libexpat1-dev
wget https://www.python.org/ftp/python/3.5.0/Python-3.5.0.tgz
tar -zxvf Python-3.5.0.tgz
cd Python-3.5.0
./configure
make
sudo make install

pip install beautifulsoup4
pip install fake-useragent
pip install selenium