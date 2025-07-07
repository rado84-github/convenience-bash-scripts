#!/usr/bin/env bash

for name in *.zip; 
do 
    newname=$(echo "$name" | rev | cut -f 2- -d '.' | rev)
    7z x -y "$name" -o"$newname/" -mmt=20;
done
