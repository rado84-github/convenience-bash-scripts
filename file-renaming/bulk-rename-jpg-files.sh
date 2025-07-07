#!/usr/bin/bash
# if you want the output filename to have 4 characters, change %03 to %04

read -p "Enter the starting number for the first file. The starting number must be an integer WITHOUT the leading zero!" start

start=$(printf "%d" "$start")

counter=$start

for file in *.jpg;
do
new_name=$(printf "%03d.jpg" "$counter")
mv "$file" "$new_name"
counter=$((counter + 1))
done
