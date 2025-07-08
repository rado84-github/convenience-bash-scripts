#!/usr/bin/env bash

for name in *.mka; 
do 
    newname=$(secho "$name" | rev | cut -f 2- -d '.' | rev)
    ffmpeg -i "$name" -vn -ar 44100 -ac 3 -ab 448k -f ac3 "$newname".ac3;
done
