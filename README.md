# tmux-pet

This plugin calls [pet](https://github.com/knqyf263/pet) via tmux.

## Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'nyuyuyu/tmux-pet'

Hit `prefix + I` to fetch the plugin and source it.

Add `@pet-new-pane-key`, `@pet-vertical-split-pane-key`, `@pet-horizontal-split-pane-key` and/or `@pet-popup-window-key` in `.tmux.conf`:

    set -g @pet-new-pane-key 'C-f'
    set -g @pet-popup-window-key 'C-p'
    set -g @pet-preview-syntax-highlight 'on'

Finally, reload tmux:

    // type this in terminal
    $ tmux source-file ~/.tmux.conf

## Manual Installation

Clone the repo:

    $ git clone https://github.com/nyuyuyu/tmux-pet ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/pet.tmux

Add `@pet-new-pane-key`, `@pet-vertical-split-pane-key`, `@pet-horizontal-split-pane-key` and/or `@pet-popup-window-key` in `.tmux.conf`:

    set -g @pet-new-pane-key 'C-f'
    set -g @pet-popup-window-key 'C-p'
    set -g @pet-preview-syntax-highlight 'on'

Finally, reload tmux:

    // type this in terminal
    $ tmux source-file ~/.tmux.conf

## Plugin options

| Options                          | Description                                                               |
| :------------------------------- | :------------------------------------------------------------------------ |
| `@pet-path`                      | Path to `pet` binary.                                                     |
| `@pet-pane-size`                 | Size of pane to display `pet` command. (e.g. `10`)                        |
| `@pet-pane-percentage`           | Percentage of pane to display `pet` command. (e.g. `50`)                  |
| `@pet-new-pane-key`              | Key binding for opening new full size pane to display `pet` command.      |
| `@pet-vertical-split-pane-key`   | Key binding for opening vertically split pane to display `pet` command.   |
| `@pet-horizontal-split-pane-key` | Key binding for opening horizontally split pane to display `pet` command. |
| `@pet-popup-window-key`          | Key binding for opening floating popup window to display `pet` command.   |
| `@pet-popup-width`               | Width of popup window. (default: `80%`)                                   |
| `@pet-popup-height`              | Height of popup window. (default: `60%`)                                  |
| `@pet-preview-syntax-highlight`  | Enable fzf preview with syntax highlighting. (e.g. `on`)                  |
| `@pet-preview-window`            | fzf preview window layout. (default: `right:60%:wrap`)                    |
| `@pet-preview-language`          | Syntax language passed to `bat`. (default: `sh`)                          |

Syntax-highlighted preview requires `fzf` as pet's selector and uses `bat` when available. Set pet's `selectcmd` to include ANSI support, for example:

    SelectCmd = "fzf --ansi --layout=reverse --border --height=90%"
