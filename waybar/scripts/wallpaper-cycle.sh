#!/bin/bash

WALLPAPERS=(
  "$HOME/.config/hypr/wallpapers/goofycat.jpg"
  "$HOME/.config/hypr/wallpapers/goofycat2.jpg"
  "$HOME/.config/hypr/wallpapers/goofycat3.jpg"
)

STATE_FILE="$HOME/.cache/wallpaper_index"
[ -f "$STATE_FILE" ] || echo 0 > "$STATE_FILE"

index=$(cat "$STATE_FILE")
next=$(( (index + 1) % ${#WALLPAPERS[@]} ))
echo "$next" > "$STATE_FILE"

new_wall="${WALLPAPERS[$next]}"

for mon in $(hyprctl monitors -j | jq -r '.[].name'); do
    hyprctl hyprpaper wallpaper "$mon,$new_wall,cover"
done
