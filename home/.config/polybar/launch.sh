#! /bin/bash

pkill polybar
polybar-msg cmd quit

echo tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown