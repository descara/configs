# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/descara/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
if [[ "$TERM" != dumb ]]; then                                     
    #a1# List files with colors (\kbd{ls \ldots})        
    alias ls="command ls ${ls_options:+${ls_options[*]}}"
    #a1# List all files, with colors (\kbd{ls -la \ldots})        
    alias la="command ls -la ${ls_options:+${ls_options[*]}}"
    #a1# List files with long colored list, without dotfiles (\kbd{ls -l \ldots})
    alias ll="command ls -l ${ls_options:+${ls_options[*]}}"                  
    #a1# List files with long colored list, human readable sizes (\kbd{ls -hAl \ldots})
    alias lh="command ls -hAl ${ls_options:+${ls_options[*]}}"
    #a1# List files with long colored list, append qualifier to filenames (\kbd{ls -l \ldots})\\&\quad(\kbd{/} for directories, \kbd{@} for symlinks ...)              
    alias l="command ls -l ${ls_options:+${ls_options[*]}}"      
else                          
    alias la='command ls -la'                                     
    alias ll='command ls -l'
    alias lh='command ls -hAl'
    alias l='command ls -l'
fi

alias vim="nvim"
alias qconfig="nvim ~/.config/qtile/config.py"
alias spotify="flatpak run com.spotify.Client"

source /usr/share/nvm/init-nvm.sh

