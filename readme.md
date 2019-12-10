# Install packages
```
sudo apt-get install gphoto2
```

# Before running the script with automatic taking pics
```
gphoto2 -get-config capturetarget
```
Check the current. If the current is 'Internal RAM', execude next command (replace [choice_number] with the choice number of 'Memory Card'. Otherwise just skip this part
```
gphoto2 -set-config capturetarget=[choice_number]
```

# Auto-detect DSLR
![](prove.jpg)
