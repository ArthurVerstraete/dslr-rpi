# Take pictures and upload to dropbox

<!-- ## Install packages

```sh
yes | sudo apt-get update && yes | sudo apt-get upgrade
```

```sh
sudo apt-get install gphoto2
``` -->

## Before running the script

### Scripts
<!-- 
```sh
chmod +x ./captureImageAndUpload.sh
```

```sh
chmod +x ./uploadImages.sh
``` -->

```sh
chmod +x ./setSettings.sh
```
<!-- 
```sh
chmod +x ./dropbox_uploader.sh
``` -->

<!-- ### This is done by the setSettings script:

From here on, you don't have to do anything. The rest of this 'chapter' is done by the script ./setSettings.sh. These are just examples on how it's done. The only thing you should do, is testing whether your DSLR is auto-detected or not. If no, this program won't work for you.

#### Others

```sh
gphoto2 --get-config capturetarget
```

Check the current. If the current is 'Internal RAM', execude next command (replace [choice_number] with the choice number of 'Memory Card'). Otherwise just skip this part

```sh
gphoto2 --set-config capturetarget=[choice_number]
```

#### Example of auto-detect DSLR

Auto-detect your DSLR:

![gphoto2 --auto-detect](prove.jpg)

Here, the DSLR is at USB-port 001/005. This port is used to change permissions.
Change permissions:

```sh
sudo chmod 777 /dev/bus/usb/001/005
``` -->

## Running scripts

First, apply the settings. This will create a cronjob that runs every 6 minutes:

```sh
./setSettings.sh
```

## What I used in this project

- gphoto2 ([Official Site](http://gphoto.org))
- the Dropbox-Uploader of Andrea Fabrizi ([Github](https://github.com/andreafabrizi/Dropbox-Uploader))