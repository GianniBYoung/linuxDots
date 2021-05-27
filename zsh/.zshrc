export ZSH=/usr/share/oh-my-zsh/
export MANPAGER="nvim -c 'set ft=man' -"
TZ='America/Menominee'; export TZ

# Set name of the theme to load --- if set to "random", it will
# to know which specific one was loaded, run: echo $RANDOM_THEME
#ZSH_THEME="daveverwer"
ZSH_THEME="kolo"

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
export PATH=$PATH:/home/gianni/.bin/personal
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/gianni/Documents/code/bash/theme.sh
export PATH=$PATH:/snap/bin/
export EDITOR=nvim
export TERMINAL=xterm-kitty
export TERM=xterm-kitty
export CLASSPATH=".:/usr/local/lib/antlr-4.9-complete.jar:$CLASSPATH"
export LD_LIBRARY_PATH=/usr/local/lib
autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin
# vim mode activated


alias ripme='python3 /home/gianni/.local/bin/bulk-downloader-for-reddit/script.py --skip-domain youtube.com --saved --quit --no-dupes --directory /media/unit/ripme; notify-send "ripme ran"'
alias trans='transmission-remote'
alias transl='transmission-remote -l'
alias install='sudo pacman -S'
alias media='cd ../../media/ext-drive'
alias nrc='nvim .zshrc'
alias cp= 'cp -iv'
alias vim='nvim'
alias rss='newsboat'
alias nv='nvim'
alias epan='espanso'
alias python='python3'
alias code='cd Documents/code'
alias copy='xsel -ib'
alias commitmsg='git commit -m "$(curl -s whatthecommit.com/index.txt)"'
alias sqb='sqlitebrowser'
alias gitm='git commit -m'
alias icat="kitty +kitten icat"
alias py='python3'
alias gitcom='git commit -m "$(curl -s whatthecommit.com/index.txt)"'
alias td='transmission-daemon'
alias s='sudo systemctl'
alias cse='ssh gyoung@cse.unl.edu'
alias antlr4='java -jar /home/gianni/Documents/code/antlr/hw01/antlr-4.9.1-complete.jar'
alias grun='java org.antlr.v4.gui.TestRig'
alias exiftool='perl /media/ext-drive/misc/downloads/Image-ExifTool-12.19/exiftool'
alias tux='tuxi'

# HSTR configuration - add this to ~/.zshrc
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor,blacklist,no-confirm,raw-history-view      # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)
export HISTFILE=~/.zsh_history
