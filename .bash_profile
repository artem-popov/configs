#xmodmap ~/configs/.xmodmap-capslock
# for linux 2 bind caps-lock to esc
mkdir -p $HOME/go
export GOPATH=$HOME/go
mkdir -p $GOPATH/src/github.com/artem-popov

export PATH=$GOPATH/bin:$PATH
export PATH=~/.npm:$PATH
export PATH=~/.cabal/bin:$PATH
export PATH=/usr/local/bin:/Applications:$PATH
export CLICOLOR=1
export LIBRARY_PATH=/usr/local/lib/:$LIBRARY_PATH

alias npm-exec='export PATH=$(npm bin):$PATH'

# normal colors
# PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
# user name is red
PS1='\[\e[0;31m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

# change ls colors if not possible to change palette
# export LSCOLORS=GxFxCxDxBxegedabagaced


if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

alias fuck='eval $(thefuck $(fc -ln -1)); history -r'

# docker-machine start default ; eval "$(docker-machine env default)"


export NVM_DIR="/Users/artem/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

shopt -s cdspell
shopt -s histappend
shopt -s cmdhist
export HISTCONTROL="ignoredupes"
export PROMPT_COMMAND='history -a'


export SCALA_HOME=/usr/local/Cellar/scala/2.11.7/libexec/


ulimit -n 20480


export HABUB_PROTOCOL=http
export HABUB_HOSTNAME=local.habub.ru
export HABUB_PORT=3000
export PGDATA=/usr/local/var/postgres

