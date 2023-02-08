#!/bin/sh

# Link up external tmux config
# https://github.com/gpakosz/.tmux
ln -s -f ~/.tmux_runtime/.tmux.conf ~/.tmux.conf

# Install "The Ultimate vimrc"
# https://github.com/amix/vimrc
sh ~/.vim_runtime/install_awesome_vimrc.sh
