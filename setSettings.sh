#!/usr/bin/env bash



gphoto2 --set-config capturetarget=1
usb_port=$(gphoto2 --auto-detect | grep 'usb' | rev | awk '{print $1}' | rev | tr ':,' '/')
sudo chmod 777 /dev/bus/"${usb_port}"
