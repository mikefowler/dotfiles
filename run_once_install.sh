#!/bin/zsh

# Link up external tmux config
# https://github.com/gpakosz/.tmux
ln -s -f ~/.tmux_runtime/.tmux.conf ~/.tmux.conf

# Install "The Ultimate vimrc"
# https://github.com/amix/vimrc
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
