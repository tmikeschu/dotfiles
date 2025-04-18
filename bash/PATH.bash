export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=/Users/tmikeschutte/.fnm:$PATH
export PATH="/Users/tmikeschutte/Library/Python/3.11/bin:$PATH"
export PATH="/Users/tmikeschutte/code/flutter/bin:$PATH"
export PATH="/usr/local/opt/postgresql@16/bin:$PATH"



# fnm
# eval "$(fnm env)"
# eval "`fnm env --use-on-cd`"

export PATH

if hash rbenv 2>/dev/null
then
  eval "$(rbenv init -)"
fi

if hash jenv 2>/dev/null
then
  eval "$(jenv init -)"
fi
