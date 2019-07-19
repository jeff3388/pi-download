from bs4 import BeautifulSoup
import subprocess
import requests
import os


res = requests.get('https://pythonk122.blogspot.com/2019/07/raspberry-pi.html').content
soup = BeautifulSoup(res, 'html.parser')
signal = soup.find("div", attrs={"class": "post-body entry-content float-container"}).text.strip()

if signal == '1':    
    subprocess.Popen("sh download.sh", shell=True, cwd='/home/pi/jojo',)

else:
    pass