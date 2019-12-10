#!/usr/bin/env bash

gphoto2 --capture-image
yes n | gphoto2 --get-all-files
