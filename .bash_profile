
# for linux 2 bind caps-lock to esc
#xmodmap ~/configs/.xmodmap-capslock
mkdir -p $HOME/go
export GOPATH=$HOME/go
mkdir -p $GOPATH/src/github.com/artem-popov

export PATH=$GOPATH/bin:$PATH
export PATH=~/.npm:$PATH
export PATH=~/.cabal/bin:$PATH
export PATH=/usr/local/bin:/Applications:$PATH
export CLICOLOR=1
# normal colors
# PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
# user name is red
PS1='\[\e[0;31m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

# change ls colors if not possible to change palette
# export LSCOLORS=GxFxCxDxBxegedabagaced


