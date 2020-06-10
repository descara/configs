# ~/.bashrc

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Aliases
alias ls='ls --color=auto'
alias la='ls --color=auto -la'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#Git alias
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

#1password alias
alias 1pass='eval $(op signin my)'

#Bash prompt
#PS1='[\u@\h \W]\$ '
PS1='\u@\h (\W) > '
#Load man help
bind '"\eh": "\C-a\eb\eb\C-y\e#man \C-y\C-m\C-p\C-a\C-d\C-e"'

#Setup prompt
cd() {
    if [[ $@ == '-' ]]; then
        builtin cd "$@" > /dev/null  # We'll handle pwd.
    else
        builtin cd "$@"
    fi
    echo -e "   \033[1;30m"`pwd`"\033[0m"
}

