#!/usr/bin/env bash

zscroll -l 20 \
    --delay 0.3 \
    --update-check true \
    "playerctl -p spotify metadata --format '{{title}} - {{artist}}'" 2>/dev/null

wait
