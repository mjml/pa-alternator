#!/bin/bash

source /home/joya/bin/pulseaudio/pa-functions

# Get time of day
hour=$(date "+%H")

if [[ hour -gt 10 && hour -lt 19 ]]; then
		device_pattern="hdmi-stereo"
else
		device_pattern="analog-stereo"
fi

index=$(pa-get-index list-sinks "device.profile.name" "$device_pattern")
pacmd set-default-sink $index


