#!/usr/bin/env bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Homebrew
brew update
brew upgrade

# Install rbenv + Ruby, and then set it as the global default
brew install rbenv
rbenv install 2.4.1
rbenv global 2.4.1

# Install Tmux and Tmuxinator.
brew install tmux
gem install tmuxinator

# Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install Bash completion
brew install bash-completion

# Install Vundle vim plugin manager and then install plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
