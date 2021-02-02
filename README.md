# Dotfiles
This repository contains my dotfiles.

## Installation
Install using one of the scripts or follow the instructions below.

### Scripts
**Debian/Ubuntu**
```bash
# TODO
```
**Arch**
```bash
# TODO
```

### Instructions
**Debian/Ubuntu**
```bash
sudo apt install vim zsh ranger git
```
**Arch**
```bash
sudo pacman -Syu vim zsh ranger git
```

Clone **vim** packages.
```bash
mkdir -p $HOME/.vim/pack/themes/start && \
mkdir -p $HOME/.vim/pack/plugins/start && \
git clone https://github.com/dracula/vim.git $HOME/.vim/pack/themes/start/dracula && \
git clone https://github.com/ctrlpvim/ctrlp.vim $HOME/.vim/pack/plugins/start/ctrp.vim && \
git clone https://github.com/mattn/emmet-vim $HOME/.vim/pack/plugins/start/emmet-vim
```
Set **zsh** as default shell.
```bash
chsh -s $(which zsh)
```
### Setup dotfiles repository
Create alias `dotfiles` before cloning and checking out the repository.
```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME' && \
git clone --bare https://github.com/eremt/dotfiles $HOME/.dotfiles && \
dotfiles checkout -f && \
dotfiles config --local status.showUntrackedFiles no
```

## Optional

### [dwm](https://dwm.suckless.org/), [st](https://st.suckless.org/), [dmenu](https://dmenu.suckless.org/)

Install xorg and other dependencies

**Debian/Ubuntu**
```bash
sudo apt install xorg build-essential libx11-dev libxft-dev libxinerama-dev
```
**Arch**
```bash
sudo pacman -S xorg xorg-xinit base-devel libx11 libxft libxinerama
```
Clone dwm, st and dmenu
```bash
mkdir $HOME/.suckless && \
git clone https://github.com/eremt/dwm ~/.suckless/dwm && \
git clone https://github.com/eremt/st  ~/.suckless/st && \
git clone https://github.com/eremt/dmenu ~/.suckless/dmenu
```
Build dwm, st and dmenu
```bash
cd $HOME/.suckless/dwm && sudo make clean install && \
cd $HOME/.suckless/st && sudo make clean install && \
cd $HOME/.suckless/dmenu && sudo make clean install
```
Add start script to .xinitrc.
```bash
echo 'exec dwm' >> $HOME/.xinitrc
```

Add the following lines to your `.zprofile` to run on login:
```bash
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
```

**qemu, kvm, virt-manager**
```bash
# TODO
```
