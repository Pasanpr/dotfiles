#!/usr/bin/env bash
#
# Run all dotfiles installers.

echo "Changing shell..."
chsh -s /bin/zsh

# Check if .zshrc exists, if not create symlink
if ! test -f ~/.zshrc;
	then
	ln -s ~/.dotfiles/.zshrc ~/.zshrc
fi

echo "Installing Homebrew..."
source ./homebrew/install.sh

echo "Installing themes"
source ./Scripts/themes.sh

echo "Customizing sublime text"
source ./sublime/install.sh

echo "Setting up Python"
source ./python/install.sh

exit 0
