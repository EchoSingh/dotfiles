#!/bin/bash

if lsmod | grep -q "^uvcvideo"; then
  # If in use → kill users
  if fuser /dev/video0 >/dev/null 2>&1; then
    notify-send "[◉¯] killing"
    fuser -k /dev/video0 2>/dev/null
    sleep 0.5
  fi

  # Try unload
  sudo modprobe -r uvcvideo 2>/dev/null || {
    sleep 0.4
    sudo modprobe -r uvcvideo 2>/dev/null
  }

  if lsmod | grep -q "^uvcvideo"; then
    notify-send "[◉¯] fail"
  else
    notify-send "[◉¯]"
  fi

else
  sudo modprobe uvcvideo 2>/dev/null && notify-send "[◉°]" || notify-send "[◉°] fail"
fi
