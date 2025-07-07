#!/usr/bin/bash

for folder in */;
do
    7z a "${folder/\//}.7z" "$folder" -mx=0 -mmt=20
done
