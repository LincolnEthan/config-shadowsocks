#!/bin/bash
sudo apt-get install python-pip polipo
sudo pip install shadowsocks
sudo cp ./shadowsocks.json  /etc/shadowsocks.json
sudo cp ./config            /etc/polipo/config
sudo  sudo sslocal -c /etc/shadowsocks.json -d start
sudo /etc/init.d/polipo restart 
git config --global http.proxy "http://127.0.0.1:8123/"
git config --global https.proxy "http://127.0.0.1:8123/"
