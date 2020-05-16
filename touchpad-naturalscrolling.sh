#!/bin/bash

# XFCE4 is lacking a setting option for
# touchpad's natural scrolling
# This works like a charm

# found the device id
TOUCHPAD_ID=$(xinput list | grep Touchpad |  grep -o "id=[0-9]*" | grep -o "[0-9]*")

xinput set-prop $TOUCHPAD_ID "libinput Natural Scrolling Enabled" 1

