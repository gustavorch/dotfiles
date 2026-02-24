HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt extendedglob nomatch
setopt autocd
setopt interactive_comments
bindkey -v
zstyle :compinstall filename '/home/gustavo/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

autoload -U colors && colors
PS1="[%{$fg[cyan]%}%n%{$fg[white]%}@%{$fg[white]%}%M %{$fg[cyan]%}%1~%{$fg[white]%}]%{$reset_color%}$ "

alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias ....'cd ../../..'
alias ls='ls --color=auto'
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias hx='helix'
alias y='yazi'
alias listpackages="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias man='batman'
alias cat='bat'
alias fx='felix'
alias v='nvim'
alias vim='nvim'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

. "$HOME/.local/bin/env"
