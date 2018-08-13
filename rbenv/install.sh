#!/bin/sh
#
# rbenv

brew install 'rbenv'
rbenv init

# Check if setup correctly
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash