export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=/Users/tmikeschutte/.fnm:$PATH
# export ANDROID_HOME=/Users/tmikeschutte/Library/Android/sdk
# export PATH=$ANDROID_HOME/platform-tools:$PATH
# export PATH=$ANDROID_HOME/tools:$PATH
# export PATH=$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$PATH

# fnm
eval "$(fnm env)"
eval "`fnm env --use-on-cd`"

export PATH

if hash rbenv 2>/dev/null
then
  eval "$(rbenv init -)"
fi

if hash jenv 2>/dev/null
then
  eval "$(jenv init -)"
fi
