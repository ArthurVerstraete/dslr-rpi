#!/usr/bin/env bash

# remove old images in img folder
rm img/DSC*

# capture images and download on the pi + keeping the image on DSLR
gphoto2 --capture-image-and-download --keep

# move image to img folder
mv DSC* img/

# use dropbox uploader script to upload script to dropbox
# at first run, this will trigger a configuration for accessing your dropbox
./dropbox_uploader.sh upload img/DSC* /
