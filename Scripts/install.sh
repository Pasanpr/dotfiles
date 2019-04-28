#!/usr/bin/env bash
#
# Run all dotfiles installers.

echo "Installing Xcode Command Line Tools..."
source ./xcode/install_tools.sh

echo "Installing Homebrew..."
source ./homebrew/install.sh

echo "Set up zsh"
source ./zsh/install.sh

echo "Installing rbenv"
source ./rbenv/install.sh

echo "Set up fastlane"
source ./fastlane/install.sh

echo "Installing Xcode"
source ./xcode/install.sh

echo "Installing themes"
source ./Scripts/themes.sh

echo "Customizing sublime text"
source ./sublime/install.sh

echo "Setting up Python environment"
source ./python/install.sh

echo "Installing utilities"
source ./utilities/install.sh

curl -L https://iterm2.com/shell_integration/zsh \
-o ~/.iterm2_shell_integration.zsh
source ~/.zshrc

# https://github.com/denysdovhan/spaceship-prompt
npm install -g spaceship-prompt

exit 0
