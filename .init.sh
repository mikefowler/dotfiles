#!/bin/bash

set -eufo pipefail

# Install Homebrew
./scripts/install-homebrew.sh

# Install chezmoi
./scripts/install-chezmoi.sh

chezmoi update
chezmoi init https://github.com/mikefowler/dotfiles.git
