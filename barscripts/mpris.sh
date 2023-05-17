#!/usr/bin/env sh

echo "$(playerctl metadata artist 2>/dev/null)-$(playerctl metadata title 2>/dev/null)"
