#!/bin/sh
apt install -y gnupg
echo "deb http://packages.azlux.fr/debian/ bullseye main" | tee /etc/apt/sources.list.d/azlux.list
wget -qO - https://azlux.fr/repo.gpg.key | sudo apt-key add -
apt update
apt install -y log2ram
systemctl disable log2ram-daily.timer
echo "***WARNING - REBOOTING NOW***
echo "Ctrl-C to cancel"
sleep 1
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
echo "Rebooting Now..."
systemctl reboot
