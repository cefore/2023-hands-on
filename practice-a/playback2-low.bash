#!/bin/bash
bitrate="low"

# { while true; do cefgetstream ccnx:/stream/$bitrate -z 2; done;} | ffplay -fflags nobuffer -flags low_delay -

cefgetstream ccnx:/stream/$bitrate -z 2 | ffplay -fflags nobuffer -flags low_delay -
