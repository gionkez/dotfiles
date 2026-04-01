#! /bin/bash

ffmpeg -f x11grab -i :0.0 -codec:v libx264 -pix_fmt yuv420p ~/Videos/$(date +%Y%m%d_%H%M%S)_video_record.mp4
