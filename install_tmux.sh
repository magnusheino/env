#!/bin/bash

set -euo pipefail

sudo apt install tmux

if [ ! -d ~/.tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

if [ ! -d ~/.config/tmux ]; then
  pushd ~/.config
  git clone git@github.com:magnusheino/tmux.git 
  popd
fi

~/.tmux/plugins/tpm/scripts/install_plugins.sh

