#!/bin/sh
#
# zsh

brew 'zsh'

echo "Changing shell..."
chsh -s /bin/zsh

# Check if .zshrc exists, if not create symlink
if ! test -f ~/.zshrc;
	then
	ln -s ~/.dotfiles/.zshrc ~/.zshrc
fi