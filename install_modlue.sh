#!/bin/sh
sudo su - 
cd /tmp 
wget http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-armv7l.sh
/bin/bash /tmp/Miniconda3-latest-Linux-armv7l.sh 
source ~/.bashrc
echo '/opt/miniconda3/lib' >> /etc/ld.so.conf.d/miniconda.conf
ldconfig -v
conda config --add channels rpi
conda install python=3.6 
exit
echo 'export PATH="/opt/miniconda3/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc 

pip install beautifulsoup4
pip install fake-useragent
pip install selenium