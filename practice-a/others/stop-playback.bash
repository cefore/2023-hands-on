#!/bin/bash

sudo kill `pgrep playback -l | awk '{print $1}'` -9
