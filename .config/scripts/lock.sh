#!/bin/bash

# Set paths
wall="$HOME/Downloads/lock.png"
img="/tmp/lockscreen.png"
pfp="$HOME/.config/i3lock/pfp.png"

# Blur the wallpaper
convert "$wall" -filter Gaussian -define filter:sigma=1 -resize 20% -blur 0x8 -resize 500% -colorspace sRGB "$img"

# Get dimensions
width=$(identify -format "%w" "$img")
height=$(identify -format "%h" "$img")
pfp_width=128
pfp_height=128

# Center position
offset_x=$(( (width - pfp_width) / 2 ))
offset_y=$(( (height - pfp_height) / 2 ))

# Composite image
convert "$img" "$pfp" -geometry +$offset_x+$offset_y -compose over -composite "$img"

# Launch i3lock with Gruvbox colors
i3lock \
  --image="$img" \
  --radius=140 \
  --ind-pos="960:540" \
  --inside-color=282828AA \
  --ring-color=d79921 \
  --line-color=00000000 \
  --keyhl-color=fabd2f \
  --bshl-color=cc241d \
  --separator-color=00000000 \
  --insidever-color=98971aAA \
  --ringver-color=98971a \
  --insidewrong-color=cc241dAA \
  --ringwrong-color=cc241d \
  --verif-text="Verifying..." \
  --wrong-text="Wrong!" \
  --noinput-text="..." \
  --clock --time-str="%H:%M" --date-str="%A, %d %B" \
  --time-color=ebdbb2 --date-color=ebdbb2

