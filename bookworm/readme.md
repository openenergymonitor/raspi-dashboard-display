# Bookworm 

Tested on RasPi4

## Run chrome kiosk at startup 

`sudo nano .config/wayfire.ini`

add 

[autostart]
screensaver = false
dpms = false
chromium = chromium-browser https://URL  --noerrdialogs --disable-infobars --kiosk --start-maximized --start-fullscreen --no-first-run --ozone-platform=wayland

## Turn display off at night 

`crontab -e`

```
0    23    *    *    * bookworm/display-off.sh 2>&1
0    7    *    *    * bookworm/display-on.sh 2>&1
```

Default scripts assume using HDMI port closest to power port 


