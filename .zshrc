HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt autocd beep extendedglob nomatch notify

zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
zstyle ':completion:*' menu select

# Matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

autoload -Uz compinit
compinit

# Colors
export CLICOLOR=1
autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"
setopt PROMPT_SUBST

# Editor
export EDITOR='vim'

# Load files
for file (~/.dotfiles/*/*.zsh) source $file

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
