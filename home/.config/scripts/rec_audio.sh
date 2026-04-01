#! /bin/bash

ffmpeg -f alsa -i default -acodec libmp3lame -ab 192k ~/Music/$(date +%Y%m%d_%H%M%S)_audio_record.mp3
