#!/bin/bash

# Script to convert multiple mp3 files to mp4 videos with a static image using FFmpeg
# Created by Fahad ALGhathbar

image="photo.png"

if ! command -v ffmpeg > /dev/null 2>&1; then
    echo "ffmpeg is not installed"
    exit 1
fi
if [ ! -f "$image" ]; then
    echo "Background image '$image' not found in this folder"
    exit 1
fi

shopt -s nullglob nocaseglob
files=( *.mp3 )
if [ ${#files[@]} -eq 0 ]; then
    echo "No mp3 files found in this folder"
    exit 1
fi

echo "Starting the conversion process..."

failed=0
for file in "${files[@]}"; do
    out="${file%.*}.mp4"
    echo "Converting: $file -> $out"
    if ! ffmpeg -nostdin -loglevel error -loop 1 -y -i "$image" -i "$file" \
        -c:v libx264 -tune stillimage -c:a aac -b:a 192k \
        -shortest -pix_fmt yuv420p "$out"; then
        echo "Failed: $file"
        failed=$((failed+1))
    fi
done

if [ "$failed" -eq 0 ]; then
    echo "Conversion process completed successfully!"
else
    echo "Done with $failed failed file(s)."
    exit 1
fi
