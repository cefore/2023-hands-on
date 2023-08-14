#!/bin/bash

libcamera-vid --width 1280 --height 720 --bitrate 8192000 -n -t 0 -o /dev/stdout | ffmpeg -i - -vcodec mpeg4 -b:v 8M -acodec aac -f mpegts - | cefputstream ccnx:/stream -r 8 -b 1400 -t 3600 -e 3600
