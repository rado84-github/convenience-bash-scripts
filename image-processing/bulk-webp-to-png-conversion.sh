#!/bin/bash

for file in *.webp;
do cwebp -q 100 "$file" -o "${file/.webp/}.png";
done
