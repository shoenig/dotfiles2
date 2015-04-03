# go stuff (put in .profile  to make gocode work)
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/Documents/go
export PATH=$PATH:$GOPATH/bin

# -- Alias --
alias mv='mv --interactive'
alias cp='cp --interactive'
alias rm='rm --interactive'
alias ls='ls --color'
alias sl='ls --color'
alias xclip='xclip -selection c'
alias ec='emacsclient -t'
alias gs='git status'
alias diff='colordiff'
alias in=inode
alias dog='godep go'
alias tree='tree -a'

# bleh
export PS1='[\[\033[0;35m\]$(hostname) \[\033[0;32m\]\W\[\033[0m\]$(__git_ps1 " (\[\033[0;33m\]%s\[\033[0m\])")] $ '
