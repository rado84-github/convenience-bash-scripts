#!/usr/bin/bash

# Output file
output_file="/B/123/flac_bitrate_info.txt"

# Clear the output file if it already exists
> $output_file

# Loop through all FLAC files in the current directory
for flac_file in *.flac; do
  # Extract the bitrate in bits per second using ffprobe
  bitrate_bps=$(ffprobe -v error -show_entries format=bit_rate -of default=noprint_wrappers=1:nokey=1 "$flac_file")

  # Convert the bitrate to kbps
  bitrate_kbps=$(echo "scale=2; $bitrate_bps / 1000" | bc)

  # Write the FLAC name and bitrate in kbps to the output file
  echo "$flac_file - ${bitrate_kbps} kbps" >> $output_file
done

echo "FLAC bitrate information written to $output_file"

