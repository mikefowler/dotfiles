#!/bin/zsh

set -eufo pipefail

formulae=(
  autojump          # https://github.com/wting/autojump
  curl              # https://curl.se/
  fzf               # https://github.com/junegunn/fzf
  git               # https://git-scm.com/
  wget              # https://www.gnu.org/software/wget/
  yarn              # https://yarnpkg.com/
  antidote          # https://getantidote.github.io/
  chruby            # https://github.com/postmodern/chruby
  ruby-install      # https://github.com/postmodern/ruby-install
  pyenv             # https://github.com/pyenv/pyenv
  gcc               # https://gcc.gnu.org/
)

if [ -f /opt/homebrew/bin/brew ]; then
  brew update
  brew install ${formulae[@]}
  brew cleanup
else
  git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote  
  sudo apt install fzf
fi
