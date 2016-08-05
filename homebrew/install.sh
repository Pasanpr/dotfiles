#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed
# using Homebrew

# Check for Homebrew
if test ! $(which brew)
then
  echo "Installing Homebrew.."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade brew-cask
brew cleanup
brew cask cleanup

echo "> brew bundle"
brew bundle
