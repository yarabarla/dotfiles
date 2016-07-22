alias l="ls"
alias la="ls -a"
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gl="git pull"
alias gb="git branch"
alias gch="git checkout"

alias python="python3"

md2pdf() {
  pandoc $1 -o `basename $1 .md`.pdf
}

export PATH="/usr/local/bin:$PATH"

export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
