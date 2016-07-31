# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/pasan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Load files
for file (~/dotfiles/*/*.zsh) source $file
