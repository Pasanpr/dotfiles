#!/bin/sh
#
# zsh

brew install zsh

echo "Changing shell..."
chsh -s /bin/zsh

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Check if .zshrc exists, if not create symlink
if ! test -f ~/.zshrc;
	then
	ln -s -f ~/.dotfiles/.zshrc ~/.zshrc
fi