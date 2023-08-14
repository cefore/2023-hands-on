#!/bin/bash

libcamera-vid --width 1280 --height 720 --bitrate 4096000 -n -t 0 -o /dev/stdout | ffmpeg -i - -vcodec mpeg4 -b:v 4M -acodec aac -f mpegts - | cefputstream ccnx:/stream -r 4 -b 1400 -t 3600 -e 3600
