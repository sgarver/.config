#!/usr/bin/env sh

# Terminate any existing waybar instances
pkill -x waybar 2>/dev/null || true

# Wait for processes to terminate
sleep 2

# Launch waybar with your theme
DISPLAY=wayland-1 waybar --config ~/.config/waybar/config --style ~/.config/waybar/style.css