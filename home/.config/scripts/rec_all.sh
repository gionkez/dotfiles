#! /bin/bash

ffmpeg -f x11grab -i :0.0 -f alsa -i default -codec:v libx264 -codec:a flac ~/Videos/$(date +%Y%m%d_%H%M%S)_all_record.mp4
