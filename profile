export CLICOLOR=1
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
alias ll="ls -ltra"

# Default editor = vim
export EDITOR=vim
alias vi='vim'

# Tmux aliases
alias tls="tmux ls"
alias ta="tmux attach"
alias tkill="tmux kill-session"
alias tnew="tmux new-sesion"

# Mkcd
alias mkcd='_(){ mkdir $1; cd $1; }; _'

# Refresh
alias refresh="source ~/.zshrc"

# Alias for vimrc, profile and zshrc
alias vimrc="vi ~/.vimrc"
alias profile="vi ~/.profile"
alias zshrc="vi ~/.zshrc"

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
        case $1 in
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
        echo "'$1' is not a valid file"
        fi  
    }

# DBC connection
function mydbc() {
    ssh -t cdatye@pa-dbc1101.eng.vmware.com 'cd /dbc/pa-dbc1101/cdatye; zsh'
}

# Scp to dbc
function dbcscp() {
    scp "$1" cdatye@pa-dbc1101.eng.vmware.com:/dbc/pa-dbc1101/cdatye
}

source ~/.iterm2_shell_integration.zsh
