#!/bin/bash

ffmpeg -i input.mp4 -vcodec mpeg4 -b:v 256k -acodec aac -f mpegts - | cat >output.mp4 
