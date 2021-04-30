#!/bin/sh
exec dbus-launch i3
xset s off && xset s 0 0 && xset s noexpose && xset s noblank && xset -dpms
