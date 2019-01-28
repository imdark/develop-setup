#! /bin/bash

# setup vi as default editor
sudo update-alternatives --config editor

# install xfce
sudo apt-get install xubuntu-desktop

sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

sudo apt-get install vim python-pip tmux git vlc vlc-nox speedtest-cli htop nodejs nvidia-384 bwm-ng screen

# Disable pinch to zoom:
xfconf-query --set false --channel xfwm4 --property /general/zoom_desktop

sudo curl -fsSL get.docker.com | sh
sudo usermod -aG docker development
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo docker login

# Download sublime text https://www.sublimetext.com/3

# install albert, app launcher
sudo apt-get install albert

# install chrome
sudo apt-get install google-chrome

# install a text comperison
sudo apt-get install meld
