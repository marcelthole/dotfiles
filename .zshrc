
ZSH=/usr/share/oh-my-zsh/
OMZSH=$ZSH/oh-my-zsh.sh
if [ ! -f $OMZSH ] ; then
  yaourt -S oh-my-zsh-git
fi

ZSH_THEME="candy"
DISABLE_AUTO_UPDATE="true"
plugins=(git)
source $OMZSH

# use the config alias for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
