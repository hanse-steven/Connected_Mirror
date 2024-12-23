#!/bin/bash

sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput

sudo apt install -y build-essential

sudo apt install -y amd64-microcode
sudo apt install -y intel-microcode 

sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

sudo apt install -y pcmanfm

sudo apt install -y terminator

sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

sudo apt install -y neofetch htop

sudo apt install -y network-manager network-manager-gnome 

sudo apt install -y lxappearance 

sudo apt install -y chromium

sudo apt install -y feh
 
sudo apt install -y fonts-firacode fonts-liberation2 fonts-ubuntu papirus-icon-theme fonts-cascadia-code

sudo apt install -y openbox dunst dbus-x11 hsetroot i3lock libnotify-bin lximage-qt menu picom  qt5-style-plugins rofi scrot tint2 xfce4-power-manager 

sudo apt install -y lxdm
sudo systemctl enable lxdm

mkdir -p ~/.config/openbox
cp -a /etc/xdg/openbox/ ~/.config/
cp black.png ~/.config/openbox/black.png

sudo apt autoremove

#------------------------------------------------------------------------

file_path="/usr/local/bin/launch_chromium_window"
file_content='#!/bin/bash

if [ "$#" -ne 5 ]; then
    echo "Usage: launch_chromium_window <URL> <X> <Y> <WIDTH> <HEIGHT>"
    exit 1
fi

url=$1
x=$2
y=$3
width=$4
height=$5

chromium --app="$url" --user-data-dir="/tmp/chromium-profile-$$" --window-position=$x,$y --window-size=$width,$height &

sleep 0.5'

echo "$file_content" | sudo tee $file_path > /dev/null
sudo chmod +x $file_path

#------------------------------------------------------------------------

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"



