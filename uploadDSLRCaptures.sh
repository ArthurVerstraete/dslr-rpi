#!/usr/bin/env bash


rm img/DSC*
gphoto2 --capture-image-and-download --keep
mv DSC* img/


# just for testing commented this line:
# ./dropbox_uploader.sh
