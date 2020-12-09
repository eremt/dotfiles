# dotfiles

```bash
sudo apt install git vim
```

```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

```bash
git clone --bare https://github.com/eremt/dotfiles.git $HOME/.dotfiles
```
Checkout repository
```bash
dotfiles checkout -f
```
Ignore untracked
```bash
config config --local status.showUntrackedFiles no
```
