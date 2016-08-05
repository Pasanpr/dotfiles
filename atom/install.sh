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
)

apm install ${FORMULAS[@]}
