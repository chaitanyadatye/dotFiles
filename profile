export CLICOLOR=1
# MacPorts Installer addition on 2014-09-20_at_17:48:48: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
alias ll="ls -ltra"

# Default editor = vim
export EDITOR=vim

#vi-vim
alias vi='vim'

#cd..=cd ..
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."

alias grep='grep --color=auto'

#git status alias
alias gls="git status"
alias gp="git push"
alias gc="git commit"
alias gl="git pull"
alias gll="git log"

#untar alias
alias untar="tar -xvzf"

#function to extract different files
extract () {
    if [ -f $1 ] ; then
    ¦   case $1 in
            *.tar.bz2)   tar xjf $1     ;;  
            *.tar.gz)    tar xzf $1     ;;  
            *.bz2)       bunzip2 $1     ;;  
            *.rar)       unrar e $1     ;;  
            *.gz)        gunzip $1      ;;  
            *.tar)       tar xf $1      ;;  
            *.tbz2)      tar xjf $1     ;;  
            *.tgz)       tar xzf $1     ;;  
            *.zip)       unzip $1       ;;  
            *.Z)         uncompress $1  ;;  
            *.7z)        7z x $1        ;;  
            *)     echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
    ¦   echo "'$1' is not a valid file"
    ¦   fi  
    }

if [ -f $(brew --prefix)/etc/bash_completion ]; then
      source $(brew --prefix)/etc/bash_completion
fi

export GIT_PS1_SHOWDIRTYSTATE=1
#export PS1='[\u@\h \w$(__git_ps1)]\$ '
#export PS1='\u@\h \W $ '
export PROMPT_COMMAND='__git_ps1 "\u@\h:\W" " $ "'
export GIT_PS1_SHOWCOLORHINTS=1
