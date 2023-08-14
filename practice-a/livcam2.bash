#!/bin/bash

width=1280
height=720
bitrate=4096000 # [bps]
duration=0 # 0 = endless

mkfifo pipe-high pipe-low
ls -la pipe*

sleep 1

libcamera-vid --width $width --height $height --bitrate $bitrate -n -t $duration -o /dev/stdout | tee pipe-high | tee pipe-low
