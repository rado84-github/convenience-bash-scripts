#!/bin/bash

for file in *.png;
do cwebp -q 100 "$file" -o "${file/.png/}.webp";
done
