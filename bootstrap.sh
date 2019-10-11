#!/bin/zsh

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
  printf "Copying files to home directory…\n"
  rsync --exclude ".git/" \
        --exclude ".DS_Store" \
        --exclude ".osx" \
        --exclude "assets/" \
        --exclude "setup.sh" \
        --exclude "bootstrap.sh" \
        --exclude "README.md" \
        --exclude "LICENSE-MIT.txt" \
        -avh --no-perms . ~;

  sleep 2

  printf "Refreshing zsh config…\n"
  source ~/.zshrc

  printf "All done!\n"
}

if [ "$1" '==' "--force" -o "$1" '==' "-f" ]; then
  doIt;
else
  if read -q 'REPLY?This may overwrite existing files in your home directory. Are you sure? (y/n) '; then
    printf "\n"
    doIt;
  fi;
fi;

unset doIt;
