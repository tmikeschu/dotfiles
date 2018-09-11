export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"
export PATH="$HOME/.nodenv/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.kiex/bin:$PATH"
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
export PATH="~/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

eval "$(rbenv init -)"
eval "$(nodenv init -)"
