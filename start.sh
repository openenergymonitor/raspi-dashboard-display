#!/bin/bash
export DISPLAY=":0"
sudo -u pi chromium-browser --incognito --noerrdialogs --check-for-update-interval=604800 --disable-session-crashed-bubble --disable-infobars --start-fullscreen --kiosk  https://emoncms.org/dashboard/view?id=1?embed=1?apikey=xxxxxxxxxxxxxxxx
