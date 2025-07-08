#!/bin/bash

# Ensure the search word and replacement word are provided as arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 [търсена дума] [нова дума]"
    exit 1
fi

# Define the word to replace and the replacement word from the script arguments
word_to_replace="$1"
replacement_word="$2"

# Loop through all files in the directory with any extension
for file in *.*; do
    # Replace the word in the filename
    new_name="${file//$word_to_replace/$replacement_word}"
    
    # Rename the file if the name has changed
    if [ "$file" != "$new_name" ]; then
        mv "$file" "$new_name"
    fi
done

echo "Замяната на думи е успешна."
