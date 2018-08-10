#!/bin/sh
#
# rbenv

brew 'rbenv'
rbenv init

# Check if setup correctly
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash