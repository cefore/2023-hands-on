#!/bin/bash

# { while true; do cefgetstream ccnx:/stream/low -z 2; done;} | ffplay -fflags nobuffer -flags low_delay -

cefgetstream ccnx:/stream/low -z 2 | ffplay -fflags nobuffer -flags low_delay -

