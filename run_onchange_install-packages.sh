#!/bin/bash

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

brew update

brew install ${formulae[@]}

brew cleanup
