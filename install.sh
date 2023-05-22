#!/bin/bash

set -eufo pipefail

echo ""
echo "🤚  This script will setup .dotfiles for you."
read -n 1 -r -s -p $'    Press any key to continue or Ctrl+C to abort...\n\n'

# Install Homebrew
./scripts/install-homebrew.sh

# Install chezmoi
./scripts/install-chezmoi.sh

chezmoi update
chezmoi init https://github.com/mikefowler/dotfiles.git

echo ""
echo "Done."
