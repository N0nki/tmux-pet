#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# shellcheck source=scripts/variables.sh
source "$CURRENT_DIR/variables.sh"

preview_enabled='false'
case "$pet_preview_syntax_highlight" in
on | true | yes | 1) preview_enabled='true' ;;
esac

if [ "$preview_enabled" = 'true' ]; then
  preview_script="$CURRENT_DIR/preview.sh"
  preview_opts="--ansi --preview \"'$preview_script' {}\" --preview-window \"$pet_preview_window\""

  export PET_PREVIEW_LANGUAGE="$pet_preview_language"
  export FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS:+$FZF_DEFAULT_OPTS }$preview_opts"

  exec "$pet_path" search --color
fi

exec "$pet_path" search
