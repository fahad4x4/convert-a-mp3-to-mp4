#!/bin/bash

# Script to convert multiple mp3 files to mp4 videos with a static image using FFmpeg
# Created by Fahad ALGhathbar

echo "Starting the conversion process..."

i=0;

for file in *.mp3;
do
    i=$((i+1));
    ffmpeg -loop 1 -y -i photo.png -i $file -shortest -pix_fmt yuv420p "$i-$file.mp4";
done

echo "Conversion process completed successfully!"
