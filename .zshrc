# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# source /usr/share/cachyos-zsh-config/cachyos-config.zsh

# # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.config/shell/aliasrc
source ~/.config/shell/profile

bindkey -e

# History
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/history"
HISTSIZE=1000
SAVEHIST=1000

# Tweaks
setopt autocd
setopt interactive_comments
stty stop undef

# Colors
autoload -U colors && colors
PS1="[%{$fg[cyan]%}%n%{$fg[white]%}@%{$fg[white]%}%M %{$fg[cyan]%}%1~%{$fg[white]%}]%{$reset_color%}$ "

# Autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# Launch Xorg
# [ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "$XINITRC"
