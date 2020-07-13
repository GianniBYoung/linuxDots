export ZSH=/usr/share/oh-my-zsh/
TZ='America/Los_Angeles'; export TZ

# Set name of the theme to load --- if set to "random", it will
# to know which specific one was loaded, run: echo $RANDOM_THEME
ZSH_THEME="gianu"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(z git extract python colored-man-pages colorize command-not-found)

source $ZSH/oh-my-zsh.sh

####   ARCOLINUX SETTINGS   ####

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt GLOB_DOTS

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups

#PS1='[\u@\h \W]\$ '

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

#list
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias l='ls'
alias l.="ls -A | egrep '^\.'"

#fix obvious typo's
alias cd..='cd ..'
alias udpate='sudo pacman -Syyu'
alias upate='sudo pacman -Syyu'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#readable output
alias df='df -h'

#continue download
alias wget="wget -c"

# Aliases for software managment
# pacman or pm
alias pacman='sudo pacman --color auto'
alias update='sudo pacman -Syyu'

#Cleanup orphaned packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

# # ex = EXtractor for all kinds of archives
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

[[ -f ~/.zshrc-personal ]] && . ~/.zshrc-personal

export PATH=/home/gianni/.local/bin:$PATHexport PATH=~/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export EDITOR=nvim
export TERMINAL=termite
alias ripme='python3 /home/gianni/.local/bin/bulk-downloader-for-reddit/script.py --saved     --quit --directory /media/ext-drive/ripme ; notify-send "ripme ran"'
alias trans='transmission-remote'
alias transl='transmission-remote -l'
alias tkill='killall transmission-daemon'
alias tdone='transmission-remote -l | grep 100% | awk '{print $1}'| paste -d, -s | xargs -i transmission-remote -t {} -r'
alias xmerge='xrdb -merge ~/.Xresources'
alias install='sudo pacman -S'
alias tset='nvim ./.config/transmission/settings.json'
alias media='cd ../../media/ext-drive'
alias nrc='nvim .zshrc'
alias cp= 'cp -iv'
alias irip='python Documents/code/python/PillsburyDoughBot/doughbot.py MancysMuses &'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias pbup='rsync -avhP /media/ext-drive/ripme/ /media/torrent-drive/ripme'
