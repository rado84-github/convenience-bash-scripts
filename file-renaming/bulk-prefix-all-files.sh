#!/bin/bash

# Prefix to add before each file
prefix="tmp_"

# Loop through all files с разширение
for file in *.*; do
    mv "$file" "${prefix}${file}"
done

echo "Prefix '$prefix' added to all files."
