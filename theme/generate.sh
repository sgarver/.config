#!/usr/bin/env bash

set -e

#TARGET="/tmp/theme_test"
TARGET="/home/sdg/.config"
DIR="$(cd "$(dirname "$0")" && pwd)"
PALETTE="$DIR/palette.json"

get() {
  jq -r ".$1" "$PALETTE"
}

export BG=$(get bg)
export FG=$(get fg)
export RED=$(get red)
export GREEN=$(get green)
export YELLOW=$(get yellow)
export BLUE=$(get blue)
export PURPLE=$(get purple)
export GRAY=$(get gray)

echo "Generating themes..."

envsubst < "$DIR/templates/ghostty.conf" > "$TARGET/ghostty/theme.conf"
envsubst < "$DIR/templates/waybar.css" > "$TARGET/waybar/colors.css"
envsubst < "$DIR/templates/bash.sh" > "$TARGET/bash/colors.sh"
envsubst < "$DIR/templates/niri.kdl" > "$TARGET/niri/theme.kdl"
envsubst < "$DIR/templates/fuzzel.ini" > "$TARGET/fuzzel/fuzzel.ini"

# ensure directories exist
mkdir -p "$TARGET/nvim/colors"
mkdir -p "$TARGET/nvim/lua/theme"

envsubst < "$DIR/templates/nvim/colors/theme.lua" > "$TARGET/nvim/colors/theme.lua"
envsubst < "$DIR/templates/nvim/lua/theme/palette.lua" > "$TARGET/nvim/lua/theme/palette.lua"
envsubst < "$DIR/templates/nvim/lua/theme/highlights.lua" > "$TARGET/nvim/lua/theme/highlights.lua"

echo "Done."
