#!/bin/bash

# Enter current video bitrate
read -p "Enter current video bitrate (in kbps): " current_bitrate

# Enter current file size
read -p "Enter current file size (in GB): " current_size

# Enter target file size
read -p "Enter target file size (in GB): " target_size

# Calculate ratio
ratio=$(echo "scale=4; $current_size / $target_size" | bc)

# Calculate new video bitrate
new_bitrate=$(echo "scale=2; $current_bitrate / $ratio" | bc)

# Display result
echo "Target video bitrate is: $new_bitrate kbps"
