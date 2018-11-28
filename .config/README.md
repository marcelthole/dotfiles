# Info about the REPO
* https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
* https://news.ycombinator.com/item?id=11070797

**New**
```
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
```
**Existing**
```
git clone --bare git@github.com:marcelthole/dotfiles.git $HOME/.cfg
config config --local status.showUntrackedFiles no
```

# Reinstall packages

```
# put all explicitly installed packages (minus AUR) into a file
pacman -Qqe > ~/.config/packages.txt
```

```
# reinstall from file (deps will be pulled in automatically)
pacaur -S --needed --noconfirm $(cat /.config/packages.txt)
# or 
xargs pacaur -S --needed --noconfirm < ~/.config/packages.txt
```
# Customize
## Own i3 config
add a new file under `~/.config/i3/workspace-name.sh`
## How to add cutom ssh hosts?
add all hosts under `~/.ssh/config_hosts`