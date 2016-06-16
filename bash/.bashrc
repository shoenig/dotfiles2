source /etc/bash_completion.d/git-prompt

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
alias gs='git status'
alias diff='colordiff'
alias tree='tree -a'
alias tcover='go test -covermode=count -coverprofile=/tmp/cover.out && go tool cover -func=/tmp/cover.out'
alias cover='go test -coverprofile=/tmp/cover.out && go tool cover -html=/tmp/cover.out'

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

# go to a folder easily in your gopath
gg(){
	local d=$1
	if [[ -z $d ]]; then
		echo "You need to specify a project name."
		return 1
	fi
	if [[ "$d" = github* ]]; then
		d=$(echo $d | sed 's/.*\///')
	fi
	d=${d%/}

	# search for the project dir in the GOPATH
	local path=( `find "${GOPATH}/src" \( -type d -o -type l \) -iname "$d"  | awk '{print length, $0;}' | sort -n | awk '{print $2}'` )
	if [ "$path" == "" ] || [ "${path[*]}" == "" ]; then
		echo "Could not find a directory named $d in $GOPATH"
		echo "Maybe you need to 'go get' it ;)"
		return 1
	fi

	# enter the first path found
	cd "${path[0]}"
}
