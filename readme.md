# Take pictures and upload to dropbox

## Before you can clone the project

```sh
sudo apt-get install git
```

## Cloning the project

```sh
git clone https://github.com/ArthurVerstraete/dslr-rpi.git
```

Fill in your github-username and -password.

### Go into the project-folder

```sh
cd dslr-rpi
```

## Before running the script

Plug the usb in the Pi and in your DSLR and turn on your DSLR. Make sure you did this in this order.

### Scripts

```sh
chmod +x ./setSettings.sh
```

## Running scripts

First, apply the settings. This will create a cronjob that runs every 6 minutes:

```sh
./setSettings.sh
```

If you see a line with hashtags, follow the instruction of the script after that line. 
If they ask you if your access token looks ok, type in 'y' and press enter.

## What I used in this project

- gphoto2 ([Official Site](http://gphoto.org))
- the Dropbox-Uploader of Andrea Fabrizi ([Github](https://github.com/andreafabrizi/Dropbox-Uploader))