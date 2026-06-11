#!/usr/bin/env bash

# $1 ... tmux pane ID

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/variables.sh"

if ! command -v "$pet_path" >/dev/null 2>&1; then
  tmux display-message "$pet_path is not found."
  exit 0
fi

# Expand the command substitution in the tmux window shell.
# shellcheck disable=SC2016
printf -v search_command 'tmux send-keys -t %q "$(%q)"' "$1" "$CURRENT_DIR/search.sh"
tmux new-window "$search_command"
