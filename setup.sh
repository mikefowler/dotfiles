#!/bin/zsh

# If we're on macOS
if [ "$(uname)" '==' "Darwin" ]; then

  # Install Homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  # Update and install upgrades for Homebrew
  brew update
  brew upgrade

  # Install rbenv + Ruby, and then set it as the global default
  brew install rbenv
  rbenv install 2.6.5
  rbenv global 2.6.5

  # Install packages
  brew install tmux
  gem install tmuxinator
  brew install reattach-to-user-namespace
  brew install bash-completion
  brew install hub
  brew install fzf
  brew install diff-so-good
fi

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended

# Install fzf
$(brew --prefix)/opt/fzf/install

# Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install Zsh plugins and themes
git clone https://github.com/lukechilds/zsh-better-npm-completion ~/.oh-my-zsh/custom/plugins/zsh-better-npm-completion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/hschne/fzf-git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Vundle vim plugin manager and then install plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
