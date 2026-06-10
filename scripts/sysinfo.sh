#!/bin/bash

CPU=$(/usr/bin/sensors | awk '/Tctl:/ {print $2}')
GPU=$(/usr/bin/sensors | awk '/edge:/ {print $2}')
RAM=$(/usr/bin/free -h | awk '/Mem:/ {print $3 "/" $2}')
DISK=$(df -h / | awk 'NR==2 {print $3 "/" $2}')
FAN=$(/usr/bin/sensors | awk '/cpu_fan:/ {print $2}')

echo " $CPU   $GPU  󰍛 $RAM  󰈐 ${FAN}RPM  󰋊 $DISK"
