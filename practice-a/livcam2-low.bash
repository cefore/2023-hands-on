#!/bin/bash

cat pipe-low | ffmpeg -i - -vcodec mpeg4 -b:v 1 -acodec aac -f mpegts - | cefputstream ccnx:/stream/low -r 1 -b 1400 -t 3600 -e 3600
