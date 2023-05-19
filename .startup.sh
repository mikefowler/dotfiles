#!/bin/bash

# Install Homebrew
./scripts/install-homebrew.sh

# Install chezmoi
./scripts/install-chezmoi.sh

chezmoi update
