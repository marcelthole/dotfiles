# Info about the REPO
* https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
* https://news.ycombinator.com/item?id=11070797

# Reinstall packages

```
# put all explicitly installed packages (minus AUR) into a file
pacman -Qqe > ~/.config/packages.txt
```

```
# reinstall from said file (deps will be pulled in automatically)
xargs pacaur -S --needed --noconfirm < ~/.config/packages.txt
```
