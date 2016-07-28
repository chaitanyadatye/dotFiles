export CLICOLOR=1
# MacPorts Installer addition on 2014-09-20_at_17:48:48: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export HADOOP_HOME=/usr/local/Cellar/hadoop/2.6.0
export HIVE_HOME=/usr/local/Cellar/hive/1.0.0/libexec
# Finished adapting your PATH environment variable for use with MacPorts.
alias hstart="/usr/local/Cellar/hadoop/2.6.0/sbin/start-dfs.sh;/usr/local/Cellar/hadoop/2.6.0/sbin/start-yarn.sh"
alias hstop="/usr/local/Cellar/hadoop/2.6.0/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.6.0/sbin/stop-dfs.sh"
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

if [ -f $(brew --prefix)/etc/bash_completion ]; then
      source $(brew --prefix)/etc/bash_completion
fi

export GIT_PS1_SHOWDIRTYSTATE=1
#export PS1='[\u@\h \w$(__git_ps1)]\$ '
#export PS1='\u@\h \W $ '
export PROMPT_COMMAND='__git_ps1 "\u@\h:\W" " $ "'
export GIT_PS1_SHOWCOLORHINTS=1
