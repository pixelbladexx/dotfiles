#!/bin/bash

BAR_HEIGHT=30  # replace this with your actual Polybar height

while true; do
    WIN_ID=$(xprop -root _NET_ACTIVE_WINDOW | awk '{print $5}')
    if [[ "$WIN_ID" != "0x0" ]]; then
        IS_FULLSCREEN=$(xprop -id "$WIN_ID" | grep "_NET_WM_STATE_FULLSCREEN")
        if [[ $IS_FULLSCREEN ]]; then
            bspc config top_padding 0
            polybar-msg cmd hide
        else
            bspc config top_padding $BAR_HEIGHT
            polybar-msg cmd show
        fi
    fi
    sleep 0.5
done


