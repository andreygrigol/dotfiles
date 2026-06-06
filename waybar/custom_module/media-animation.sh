#!/usr/bin/env bash

# "▁", "▂", "▃", "▄", "▅", "▆", "▇", "█"

animation_frames=("▂▄▆" "▄▂▆" "▄▆▂" "▆▄▂" "▆▂▄")
while :; do
  for frame in "${animation_frames[@]}"; do
    status=$(playerctl -p spotify metadata --format '{{status}}' 2>/dev/null)

    if [ "$status" == "Playing" ]; then
        echo "$frame"
    elif [ "$status" == "Paused" ]; then
        echo ""
    else
        echo ""
    fi
    sleep 0.1
  done
done
