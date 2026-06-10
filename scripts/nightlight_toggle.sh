#!/bin/bash

STATE_FILE="/tmp/nightlight_state"

if [ -f "$STATE_FILE" ]; then
  # Turn OFF
  pkill redshift 2>/dev/null
  redshift -x
  rm "$STATE_FILE"
  notify-send "🌙 Night Light OFF"
else
  # Turn ON
  redshift -O 5000 &
  touch "$STATE_FILE"
  notify-send "🌙 Night Light ON"
fi
