#!/bin/sh
#
# rbenv

RBENV=$(command -v rbenv)
if ! [ -x "$RBENV" ]; then
	brew install 'rbenv'
	# Check if setup correctly
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
else
	echo "$(rbenv --version) installed"
fi

rbenv init
rbenv install 2.6.4
rbenv global 2.6.4
rbenv rehash

gem install bundler