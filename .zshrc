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
export TERM=xterm-256color
export LSCOLORS="Gxfxcxdxbxegedabagacad"
setopt PROMPT_SUBST

# Editor
export EDITOR='vim'

# Path Variables

# Move /usr/local/bin ahead of /usr/bin on $PATH
export PATH="/usr/local/bin:$PATH"

# golang setup
export PATH=$PATH:/usr/local/go/bin

# Load files
for file (~/.dotfiles/*/*.zsh) source $file

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# subl
if ! test -f /usr/local/bin/subl;
	then
	ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
fi

export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"

source ~/.iterm2_shell_integration.zsh