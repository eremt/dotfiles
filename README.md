# dotfiles

## Setup
Install applications
```bash
sudo apt install git vim zsh
```
Add the alias
```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
Clone the repository
```bash
git clone --bare https://github.com/eremt/dotfiles.git $HOME/.dotfiles
```
Checkout files
```bash
dotfiles checkout -f
```
Ignore untracked
```bash
dotfiles config --local status.showUntrackedFiles no
```
