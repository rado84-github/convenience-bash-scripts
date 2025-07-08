#!/usr/bin/bash

for name in *.7z; 
do 
    newname=$(echo "$name" | rev | cut -f 2- -d '.' | rev)
    7z x -y "$name" -o"$newname/" -mmt=20;
done
