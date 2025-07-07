#!/usr/bin/env bash

for name in *.m4a; 
do 
    newname=$(echo "$name" | rev | cut -f 2- -d '.' | rev)
    ffmpeg -i "$name" -vn -ar 44100 -ac 2 -ab 1411k -f wav "$newname".wav;
done
