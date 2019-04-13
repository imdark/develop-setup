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

# very usful calculator
sudo apt-get install speedcrunch


# aut detect and configure external displays when connected to 
cat > ~/.resize-windows.sh << EOF
#!/bin/bash
export DISPLAY=:0
export XAUTHORITY=/home/development/.Xauthority
xrandr --output DP-2-1 --mode 3840x1080 --rate 60 --output eDP-1 --mode 1920x1080 --pos 1000x1080
xrandr --output DP2-1 --mode 1920x1080 --rate 60 --output eDP1 --mode 1920x1080 --pos 1000x1080
xrandr --output DP2-1 --mode 3840x1080 --rate 60 --output eDP1 --mode 1920x1080 --pos 1000x1080
EOF

cat >> /etc/udev/rules.d/99-external-display.rules << EOF
SUBSYSTEM=="drm", ACTION=="add", RUN+="/home/development/.resize-windows.sh" OPTIONS="last_rule"
EOF


#to fix a bug where xfce does not accept password after wake up from hibernation
sudo apt remove gnome-screensaver
