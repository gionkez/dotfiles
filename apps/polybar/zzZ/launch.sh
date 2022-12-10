#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
bars=("basic")
polybar ${bars[0]}_left &
polybar ${bars[0]}_right &

