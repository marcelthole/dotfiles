ZSH=/usr/share/oh-my-zsh/
OMZSH=$ZSH/oh-my-zsh.sh
if [ ! -f $OMZSH ] ; then
  echo "No oh-my-zsh installation found. Install it!"
  echo "Archlinux Example: yaourt -S oh-my-zsh-git"
fi

HOST_COLOR=$(cat $HOME/.config/zsh/hostcolor 2>/dev/null || echo "red")
ZSH_THEME=""
DISABLE_AUTO_UPDATE="true"
plugins=(git)

ZCACHEDIR=$HOME/.config/zsh/cache
HISTFILE=$ZCACHEDIR/.zsh_history
ZSH_COMPDUMP=$ZCACHEDIR/.zcompdump

source $OMZSH

function git_local_status() {
    echo $(git symbolic-ref --short HEAD 2>/dev/null || git describe --tags --always 2>/dev/null)
}
function git_local_or_remote_status() {
    local remote_status=$(git_remote_status)
    local local_status=$(git_local_status)

    if [ ! -z "$remote_status" ]; then
        echo $remote_status
    elif [ ! -z "$local_status" ]; then
        echo ${ZSH_THEME_GIT_PROMPT_PREFIX}local/${local_status}$ZSH_THEME_GIT_PROMPT_SUFFIX
    fi
}

# Custom candy theme
source ~/.config/zsh/candy.zsh-theme

# use the config alias for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# completion for slash after ..
zstyle ':completion:*' special-dirs true

alias gpurge='echo $(git branch --merged | grep -v "\*" | grep -v "master" | grep -v "staging" | grep -v "integration") | xargs -n 1 git branch -d'
