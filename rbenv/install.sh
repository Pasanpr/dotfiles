#!/bin/sh
#
# rbenv


RBENV=$(command -v rbenv)
if ! [ -x "$RBENV" ]; then
	brew install 'rbenv'
	rbenv init
	rbenv install 2.5.1
	rbenv global 2.5.1
	rbenv rehash
	# Check if setup correctly
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
else
	echo "$(rbenv --version) installed"
fi