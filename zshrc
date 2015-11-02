# aliases
alias ls='ls --color=auto'
alias l='ls -CF'

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e

setopt completealiases
setopt HIST_IGNORE_DUPS

autoload -U compinit promptinit colors

zstyle :compinstall filename '/home/toko/.zshrc'
zstyle ':completion:*' menu select

compinit
promptinit

PROMPT="[%n][%d]> "
