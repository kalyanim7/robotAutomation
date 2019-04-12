#!/bin/bash
apt update -y
apt install python-pip -y
apt update -y
pip install robotframework
pip install robotframework-selenium2library
apt install firefox
wget https://github.com/mozilla/geckodriver/releases/download/v0.23.0/geckodriver-v0.23.0-linux32.tar.gz
tar -xvf geckodriver-v0.23.0-linux32.tar.gz
cp geckodriver /usr/bin
