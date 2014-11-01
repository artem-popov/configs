
# for linux 2 bind caps-lock to esc
#xmodmap ~/configs/.xmodmap-capslock
mkdir -p $HOME/go
export GOPATH=$HOME/go
mkdir -p $GOPATH/src/github.com/artem-popov

export PATH=$GOPATH/bin:$PATH
export PATH=~/.npm:$PATH
export PATH=~/.cabal/bin:$PATH
export PATH=/usr/local/bin:/Applications:$PATH
