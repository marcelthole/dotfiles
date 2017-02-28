
ZSH=/usr/share/oh-my-zsh/
OMZSH=$ZSH/oh-my-zsh.sh
if [ ! -f $OMZSH ] ; then
  echo "No oh-my-zsh installation found. Install it!"
  echo "Archlinux Example: yaourt -S oh-my-zsh-git"
fi

ZSH_THEME=""
DISABLE_AUTO_UPDATE="true"
plugins=(git)

ZCACHEDIR=$HOME/.config/zsh/cache
HISTFILE=$ZCACHEDIR/.zsh_history
ZSH_COMPDUMP=$ZCACHEDIR/.zcompdump

source $OMZSH

# Custom candy theme
source ~/.config/zsh/candy.zsh-theme

# use the config alias for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# completion for slash after ..
zstyle ':completion:*' special-dirs true