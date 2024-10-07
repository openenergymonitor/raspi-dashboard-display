#WAYLAND_DISPLAY="wayland-1" wlr-randr --output HDMI-A-1 --off
#!/bin/bash
export WAYLAND_DISPLAY=wayland-1
export XDG_RUNTIME_DIR=/run/user/1000
/usr/bin/wlr-randr --output HDMI-A-1 --off
