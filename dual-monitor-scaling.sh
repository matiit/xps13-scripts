#!/bin/bash

# Just assume it's the only connected external display
NEWMONITOR=$(xrandr | grep ' connected' | grep -v eDP-1 | awk '{print $1}')
# Use first arg if provided
OUTPUT="${1:-$NEWMONITOR}"

xrandr --output $OUTPUT --auto --scale 2x2 --right-of eDP-1 || echo "This script only supports one external display, more detected: $NEWMONITOR"


