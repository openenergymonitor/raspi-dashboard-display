#!/bin/bash
export WAYLAND_DISPLAY=wayland-1
export XDG_RUNTIME_DIR=/run/user/1000
/usr/bin/wlr-randr --output HDMI-A-1 --on

#WAYLAND_DISPLAY="wayland-1" wlr-randr --output HDMI-A-1 --on

pkill chromium
sleep 5
chromium-browser https://URL  --noerrdialogs --disable-infobars --kiosk --start-maximized --start-fullscreen --no-first-run --ozone-platform=wayland &

#for HDMI 0 use A-1, closes to power socket
#vc4.force_hotplug=1 to the end of the existing line in /boot/firmware/cmdline.txt (don't add any extra lines) and reboot. If the monitor you have connected to HDMI1 automatically turns back on again, add vc4.force_hotplug=2 instead. And if both monitors automatically turn back on again after switching them off with wlr-randr, use vc4.force_hotplug=3.
