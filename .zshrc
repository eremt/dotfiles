# prompt
autoload -Uz promptinit

fg_faded='%F{240}'
fg_normal='%F{245}'
PROMPT="$fg_faded%n@%m:%f$fg_normal%~%f "

test -r $HOME/.config/shell/common && source $HOME/.config/shell/common
test -r $HOME/.config/shell/aliases && source $HOME/.config/shell/aliases

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# no duplicates or lines starting with space
setopt hist_ignore_dups hist_ignore_space

# vi mode
bindkey -v
# Ctrl+/ for search
bindkey '^_' history-incremental-search-backward

# completions
zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]} r:|[._-]=* r:|=*'
autoload -Uz compinit
compinit
