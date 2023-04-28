#!/bin/bash

set -euo pipefail

sudo apt install ripgrep

wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage -O ~/.local/bin/nvim
chmod 755 ~/.local/bin/nvim

if [ ! -d ~/.config/nvim ]; then
  mkdir -p ~/.config/nvim
  git clone https://github.com/AstroNvim/AstroNvim.git ~/.config/nvim
  git clone https://github.com/magnusheino/AstroNvim_user ~/.config/nvim/lua/user
fi
