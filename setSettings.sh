#!/usr/bin/env bash


path=$(pwd)
yes | sudo apt-get update && yes | sudo apt-get upgrade
sudo apt-get install gphoto2
sudo chmod +x ./captureImageAndUpload.sh
sudo chmod +x ./setSettings.sh
sudo chmod +x ./dropbox_uploader.sh
echo ""
echo ""
echo ""

if test -f ~/.dropbox_uploader
then
	echo "there is already a dropbox uploader config file"
else
	./dropbox_uploader.sh
fi

if  grep -Fxq "*/6 * * * * cd ${path} && ./captureImageAndUpload.sh" mycron 
then
	echo "cronjob already in mycron"
else
	echo "*/6 * * * * cd ${path} && ./captureImageAndUpload.sh" >> mycron
fi
crontab mycron
mkdir img
usb_port=$(gphoto2 --auto-detect | grep 'usb' | rev | awk '{print $1}' | rev | tr ':,' '/')
sudo chmod 777 /dev/bus/"${usb_port}"
gphoto2 --set-config capturetarget=1
