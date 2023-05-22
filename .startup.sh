#!/bin/bash

# Install Homebrew
./scripts/install-homebrew.sh

source ~/.zshrc

# Install packages
./scripts/install-homebrew-packages.sh

# Install chezmoi
./scripts/install-chezmoi.sh

chezmoi update
