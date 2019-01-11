export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:$GOPATH/bin
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"
export PATH="$HOME/.nodenv/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.kiex/bin:$PATH"
export PATH="~/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.linuxbrew/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="/home/ubuntu/.linuxbrew/bin:$PATH"

export GOPATH=$HOME/go

if hash rbenv 2>/dev/null
then
  eval "$(rbenv init -)"
fi

if hash nodenv 2>/dev/null
then
  eval "$(nodenv init -)"
fi

if hash jenv 2>/dev/null
then
  eval "$(jenv init -)"
fi
