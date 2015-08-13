export CC=clang
export CXX=clang++

export GOROOT=/usr/local/go
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin

alias composer='docker run --rm -ti -v $(pwd):/app composer/composer'
