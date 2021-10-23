#!/usr/bin/env bash

exec_polybar() {
  polybar --reload execute 2>&1 | tee -a /tmp/polybar1.log & disown
}

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log

# XXX: This is hack; I want to ensure that the system tray is
#      coming at HDMI-0 so I'm using sort -r.
# TODO: Improve this
for m in $(xrandr --query | grep " connected" | cut -d" " -f1 | sort -r); do
  echo "[$m] Executing polybar..." | tee -a /tmp/polybar1.log /tmp/polybar2.log
  MONITOR=$m exec_polybar
done

echo "Bars launched..."
