#!/usr/bin/env bash
#
# Run all dotfiles installers.

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

user () {
  printf "\r  [ \033[0;33m??\033[0m ] $1\n"
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

echo "Changing shell..."
chsh -s /bin/zsh

echo "Installing Homebrew..."
source ./homebrew/install.sh

echo "Installing themes"
source ./Scripts/themes.sh

exit 0
