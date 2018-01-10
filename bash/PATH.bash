export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"

eval "$(rbenv init -)"
eval "$(nodenv init -)"
