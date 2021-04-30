#!/usr/bin/env bash

BAR="default"
# Terminate already running bar instances
killall -q polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar $BAR 2>&1 | tee -a /tmp/polybar1.log & disown
  done
else
  polybar --reload $BAR &
fi

echo "Bars launched..."

