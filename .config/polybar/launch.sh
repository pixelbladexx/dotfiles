#!/bin/bash

BAR_HEIGHT=30
BAR_OFFSET_Y=10
TOTAL_PAD=$((BAR_HEIGHT + BAR_OFFSET_Y))

# Kill old polybar
killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 0.2; done

# Set top_padding AFTER bspwm has fully initialized
sleep 1
bspc config top_padding $TOTAL_PAD

# Launch Polybar
polybar mybar &


