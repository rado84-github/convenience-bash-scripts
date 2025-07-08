#!/usr/bin/bash
#calculate image height proportionally for 16:9 resolution

echo "image height should be $(echo "($1/1.777777778)" | bc | awk '{printf "%.0f", $1}') px"
