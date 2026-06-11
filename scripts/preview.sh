#!/usr/bin/env bash

line="$*"
language="${PET_PREVIEW_LANGUAGE:-sh}"

case "$line" in
*']: '*)
  command="${line#*]: }"
  ;;
*)
  command="$line"
  ;;
esac

if command -v bat >/dev/null 2>&1; then
  printf '%s\n' "$command" | bat --color=always --language "$language" --style=plain
else
  printf '%s\n' "$command"
fi
