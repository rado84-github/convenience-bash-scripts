#!/usr/bin/bash
#calculate image height proportionally for 16:10 resolution

echo "image height should be $(echo "($1/1.6)" | bc | awk '{printf "%.0f", $1}') px"
