#!/usr/bin/env bash

# Terminate already running bars
killall -q polybar

# Wait until other bars have shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar -r --config=$HOME/.config/polybar/config bar1
