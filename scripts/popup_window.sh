#!/usr/bin/env bash

# $1 ... tmux pane ID

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/variables.sh"

if ! command -v "$pet_path" >/dev/null 2>&1; then
  tmux display-message "$pet_path is not found."
  return
fi

options=(-E -T "pet search")

if [ -n "$pet_popup_width" ]; then
  options+=(-w "$pet_popup_width")
fi
if [ -n "$pet_popup_height" ]; then
  options+=(-h "$pet_popup_height")
fi

# Expand these variables inside the popup shell, not in this script.
popup_command='tmux send-keys -t "$PET_TARGET_PANE" "$("$PET_PATH" search)"'

tmux display-popup "${options[@]}" \
  -e "PET_PATH=$pet_path" \
  -e "PET_TARGET_PANE=$1" \
  "$popup_command"
