video-bitrate-calculations.sh: Bash script to calculate target video bitrate, if you want to achieve a certain target file size. It doesn't take the audio file into account because it remains a constant - unchanged variable through the whole process. So the target file size will include the audio file, regardless of its bitrate or type.

An important note! This script calculates bitrates for H265 NVENC conversion! 4500 kbps H264 doesn't give the same quality as 4500 kbps H265. The difference between the two is ginormous (H265 gives the same quality like H264 but at lower bitrate).
