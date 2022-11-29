# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[2;37m\]\u@\h\[\e[m\]:\w '

test -r $HOME/.config/shell/common && source $HOME/.config/shell/common
test -r $HOME/.config/shell/aliases && source $HOME/.config/shell/aliases

# history
HISTSIZE=1000
HISTFILESIZE=1000
# HISTCONTROL=ignoreboth # no duplicates or lines starting with space
# shopt -s histappend # append to history, dont overwrite

# vi mode
set -o vi
bind -m vi-command '\C-l: clear-screen'
bind -m vi-insert '\C-l: clear-screen'

# completions
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion/ ]; then
    source /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
  fi
fi
