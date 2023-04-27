#!/bin/bash

set -euo pipefail

if [ ! -d ~/.tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

if [ ! -f ~/.config/tmux/tmux.conf ]; then
  mkdir -p ~/.config/tmux >/dev/null 2>&1
  wget https://raw.githubusercontent.com/magnusheino/tmux/main/tmux.conf -O ~/.config/tmux/tmux.conf
fi

~/.tmux/plugins/tpm/scripts/install_plugins.sh

