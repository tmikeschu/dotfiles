export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:$GOPATH/bin
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"
export PATH="$HOME/.nodenv/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.kiex/bin:$PATH"
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
export PATH="~/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.linuxbrew/bin:$PATH"

export GOPATH=$HOME/go
export CLINC_PATH=$HOME/clinc/lucida-clinc

eval "$(rbenv init -)"
eval "$(nodenv init -)"
