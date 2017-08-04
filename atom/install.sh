#!/bin/sh
#
# Atom
#
# Install atom packages

FORMULAS=(
    autocomplete-swift
    linter-swiftc
    set-syntax
    typewriter
    linter
    linter-ui-default
    linter-pycodestyle
)

apm install ${FORMULAS[@]}
