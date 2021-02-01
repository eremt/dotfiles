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

Install xorg, build-essential and Xlib header files then clone dwm, st and dmenu
```bash
sudo apt install -y xorg build-essential libx11-dev libxft-dev libxinerama-dev && \
mkdir $HOME/.suckless && \
git clone https://git.suckless.org/dwm $HOME/.suckless/dwm && \
git clone https://git.suckless.org/st  $HOME/.suckless/st && \
git clone https://git.suckless.org/dmenu $HOME/.suckless/dmenu
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
To start run.
```bash
startx
```

**qemu, kvm, virt-manager**
```bash
# TODO
```
