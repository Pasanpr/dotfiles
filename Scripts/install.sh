#!/usr/bin/env bash
#
# Run all dotfiles installers.

echo "Changing shell..."
chsh -s /bin/zsh
ln -s ~/.dotfiles/.zshrc ~/.zshrc

echo "Installing Homebrew..."
source ./homebrew/install.sh

echo "Installing themes"
source ./Scripts/themes.sh

echo "Installing atom packages"
source ./atom/install.sh

echo "Setting up Python"
source ./python/install.sh

exit 0
