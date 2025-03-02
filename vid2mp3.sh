#!/bin/bash

cd $(dirname $0)

VIDEO_URL=$1

mkdir -p downloads

yt-dlp -x --audio-format mp3 -o "downloads/%(title)s.%(ext)s" $VIDEO_URL
