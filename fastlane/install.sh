#!/bin/sh

FAST=$(gem list -i fastlane)
if ! [ -x "$RBENV" ]; then
	gem install fastlane

# Setup credentials
fastlane fastlane-credentials add --username pasan@premaratne.me
else
	echo "fastlane already installed..."
fi