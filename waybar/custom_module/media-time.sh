#!/usr/bin/env bash

playerctl -p spotify metadata --format '{{duration(position)}}/{{duration(mpris:length)}}' 2>/dev/null
