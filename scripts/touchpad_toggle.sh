#!/bin/bash

DEVICE="ASUE140D:00 04F3:31B9 Touchpad"

ID=$(xinput list --id-only "$DEVICE")

STATE=$(xinput list-props "$ID" | awk '/Device Enabled/ {print $NF}')

if [ "$STATE" = "1" ]; then
    xinput disable "$ID"
    notify-send "Touchpad OFF" "ฅ^•ﻌ•^ฅ sleeping"
else
    xinput enable "$ID"
    notify-send "Touchpad ON" "ฅ^•ﻌ•^ฅ awake"
fi
