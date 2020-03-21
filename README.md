# raspi-dashboard-display
Scripts and config to run a RaspberryPi with HDMI monitor as a plublic display.

*Tested on Raspbian Buster*


## CAD files for plywood display fascia 

Designed to fit Dell S2419HM 23.8 Inch IPS Anti-Glare LED-backlit LCD

**TBC**

## Run google-chrome is kiosk mode 

```
#!/bin/bash
export DISPLAY=":0"
sudo -u pi chromium-browser --incognito --noerrdialogs --disable-session-crashed-bubble --disable-infobars --start-fullscreen --kiosk  https://emoncms.org/dashboard/view?id=XX?embed=1?apikey=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

Save as `start.sh` and make executable and add entry to `/etc/rc.local` to run on boot

Use `Alt + F4` to exit kiosk mode

## Hide the mouse 

`sudo apt-get install uncluttered`

add `unclutter -idle 0 &` to `/etc/rc.local`

## Refresh the page

`sudo apt-get install xdotool` 

Create a bash file called `refresh.sh`

```
#!/bin/bash
DISPLAY=:0 xdotool key F5
```

run every 1hr via cron job

`$ crontab -e`

`0     *     *    *    * /home/pi/refresh.sh`

## Turn off the display during the night 

Add to crontab:

`$ crontab -e`

Off at 8pm on at 7am 
```
00    20    *    *    * vcgencmd display_power 0
00    7    *    *    * vcgencmd display_power 1
```

## Example display

![](https://blog.openenergymonitor.org/images/cydynni-display-3-shopfront.jpg)


