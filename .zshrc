# prompt
autoload -Uz promptinit
promptinit
PROMPT='%F{8}%n%f%F{8}@%m%f:%F{7}%~%f '

test -r $HOME/.config/shell/common && source $HOME/.config/shell/common
test -r $HOME/.config/shell/aliases && source $HOME/.config/shell/aliases

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# vi mode
bindkey -v

# completions
zstyle :compinstall filename '/home/user/.zshrc'
autoload -Uz compinit
compinit
