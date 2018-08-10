#!/bin/sh
#
# Xcode Command Line Tools

# Check if xcode-select is already installed
if ! xcode-select -p; then
	xcode-select --install
else
	echo "Xcode command line tools already installed. Skipping!"
fi