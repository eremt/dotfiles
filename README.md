# Dotfiles
This repository contains my dotfiles.

- [Installation](https://github.com/eremt/dotfiles#installation)
- [dwm, st, dmenu](https://github.com/eremt/dotfiles#dwm-st-dmenu)
- [qemu, kvm, virt-manager](https://github.com/eremt/dotfiles#qemu-kvm-virt-manager)

## Installation
Install using one of the scripts or follow the instructions below.

**Debian/Ubuntu**
```bash
# TODO
```
**Arch**
```bash
# TODO
```

**Debian/Ubuntu**
```bash
sudo apt install vim zsh ranger git
```
**Arch**
```bash
sudo pacman -Syu vim zsh ranger git which
```
Create an alias called `dotfiles` for the repository:
```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
```
Clone and check out the repository:
```bash
git clone --bare https://github.com/eremt/dotfiles ~/.dotfiles && \
dotfiles checkout -f && \
dotfiles config --local status.showUntrackedFiles no
```
### Recommended
Set **zsh** as default shell.
```bash
chsh -s $(which zsh)
```
Clone **vim** packages.
```bash
mkdir -p $HOME/.vim/pack/themes/start && \
mkdir -p $HOME/.vim/pack/plugins/start && \
git clone https://github.com/dracula/vim.git $HOME/.vim/pack/themes/start/dracula && \
git clone https://github.com/ctrlpvim/ctrlp.vim $HOME/.vim/pack/plugins/start/ctrp.vim && \
git clone https://github.com/mattn/emmet-vim $HOME/.vim/pack/plugins/start/emmet-vim
```

### dwm, st, dmenu
Check out [github.com/eremt/dwm](https://github.com/eremt/dwm) to install my builds of suckless' [dwm](https://dwm.suckless.org/), [st](https://st.suckless.org/) and [dmenu](https://dmenu.suckless.org/).

### qemu, kvm, virt-manager
```bash
# TODO
```
