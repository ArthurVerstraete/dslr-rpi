#!/usr/bin/env bash

# remove old images in img folder
rm img/*.JPG

# capture images and download on the pi + keeping the image on DSLR
gphoto2 --capture-image-and-download --keep

# move image to img folder
mv *.JPG img/

# use dropbox uploader script to upload script to dropbox
./dropbox_uploader.sh upload img/*.JPG /
