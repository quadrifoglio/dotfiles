export GOROOT=/opt/go
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin

alias composer='docker run --rm -ti -v $(pwd):/app composer/composer'
alias fuck='sudo $(fc -ln -1)'
