source /etc/bash_completion.d/git-prompt

export EDITOR=/usr/bin/nano

# go stuff (put in .profile  to make gocode work)
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/Documents/go
export PATH=$PATH:$GOPATH/bin
export CDPATH=.:${GOPATH}/src/indeed/devops:${GOPATH}/src/indeed/gophers

# -- Alias --
alias mv='mv --interactive'
alias cp='cp --interactive'
alias rm='rm --interactive'
alias ls='ls --color'
alias sl='ls --color'
alias xclip='xclip -selection c'
alias gs='git status'
alias diff='colordiff'
alias tree='tree -a'
alias cover-html='go test -coverprofile=/tmp/cover.out && go tool cover -html=/tmp/cover.out'

# more gnome-terminal colours (nice for emacs-nox)
if [ -n "$DISPLAY" -a "$TERM" == "xterm" ]; then
    export TERM=xterm-256color
fi

# bleh
export PS1='[\[\033[0;35m\]$(hostname) \[\033[0;32m\]\W\[\033[0m\]$(__git_ps1 " (\[\033[0;33m\]%s\[\033[0m\])")] $ '

# trim trailing whitespace of a file
trim() {
	sed 's/[ \t]*$//' $1 > $1__.tmp
	cat $1__.tmp > $1
	rm -f $1__.tmp
}
