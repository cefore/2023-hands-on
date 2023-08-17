#!/bin/bash

width=640
height=480
bitrate=2048000 # [bps]
duration=0 # 0 -> endless

libcamera-vid --width $width --height $height --bitrate $bitrate -n -t $duration -o /dev/stdout | tee pipe-high | tee pipe-low
