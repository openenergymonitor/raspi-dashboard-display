# Bookworm 

Tested on RasPi4

## Run chrome kiosk at startup 

`sudo nano .config/wayfire.ini`

add 

```
[autostart]
screensaver = false
dpms = false
chromium = chromium-browser https://URL  --noerrdialogs --disable-infobars --kiosk --start-maximized --start-fullscreen --no-first-run --ozone-platform=wayland
```

## Turn display off at night 

`crontab -e`

```
0    23    *    *    * bookworm/display-off.sh 2>&1
0    7    *    *    * bookworm/display-on.sh 2>&1
```

Default scripts assume using HDMI port closest to power port 

## Read-only file system 

`sudo raspi-config`

Select Performance options
Select Overlay File System

- Confirm that you would like to enable the overlay file system
- Confirm that you would like to write-protect the boot partition
- Confirm reboot

To enable read-write FW

`sudo mount -o remount,rw /boot`


