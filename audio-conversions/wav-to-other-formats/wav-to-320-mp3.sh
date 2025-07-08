#!/usr/bin/env bash

for name in *.wav; 
do 
    newname=$(echo "$name" | rev | cut -f 2- -d '.' | rev)
    ffmpeg -i "$name" -vn -ar 44100 -ac 2 -ab 320k -f mp3 "$newname".mp3;
done
