#!/usr/bin/env bash
pkill -x waybar 2>/dev/null
sleep 0.3
waybar -c ~/.config/mango/waybar/config.jsonc \
       -s ~/.config/mango/waybar/style.css &
sleep 0.5
if ! pgrep -x waybar >/dev/null; then
    echo "Waybar не запустился, смотрите вывод:" >&2
    waybar -c ~/.config/mango/waybar/config.jsonc \
           -s ~/.config/mango/waybar/style.css
fi
