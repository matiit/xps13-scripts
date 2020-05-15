#!/bin/bash

[[ $UID = 0 ]] || exec sudo "$0"

echo 1 > '/sys/bus/pci/devices/0000:00:1f.3/remove'
sleep 1
echo 1 > /sys/bus/pci/rescan

# following (potentially less invasive method) should work too
#rmmod -f snd-hda-intel && modprobe snd-hda-intel
# this solution, however, doesn't seem to fix non-working sound media buttons
