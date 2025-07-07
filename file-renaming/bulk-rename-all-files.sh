#!/bin/bash

# Ensure the starting number is treated as an integer
start=$(printf "%d" "$1")

# Initialize the counter with the starting number
counter=$start

# Loop through all files in the directory with any extension
for file in *.*; do
    # Extract the file extension
    extension="${file##*.}"
    
    # Construct the new name using the counter, padded with leading zeros, and keeping the extension
    new_name=$(printf "%03d.%s" "$counter" "$extension")
    
    # Rename the file
    mv "$file" "$new_name"
    
    # Increment the counter
    counter=$((counter + 1))
done

echo "Renaming completed starting from $start."
