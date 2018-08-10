#!/bin/bash
#
# Homebrew
#
# This installs some of the common dependencies needed
# using Homebrew

# Check for Homebrew
command -v brew >/dev/null 2>&1 || { echo >&2 "Homebrew unavailable. Instaling..."; \
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; }

brew update
brew doctor
brew tap caskroom/cask
brew install brew-cask
brew cleanup
brew cask cleanup

echo "> brew bundle"
brew bundle

