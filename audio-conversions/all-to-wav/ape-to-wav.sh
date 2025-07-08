#!/usr/bin/env bash

for name in *.ape; 
do 
    newname=$(echo "$name" | rev | cut -f 2- -d '.' | rev)
    ffmpeg -i "$name" "$newname".wav;
done
