export HISTCONTROL=erasedups
export EDITOR=nvim

include () {
    [[ -f "$1" ]] && source "$1"
}

source $HOME/dotfiles/bash/aliases.bash
source $HOME/dotfiles/bash/git_completion.bash
source $HOME/dotfiles/bash/PATH.bash
source $HOME/dotfiles/.env.bash

if [[ -r "$(brew --prefix)/opt/mcfly/mcfly.bash" ]]; then
  source "$(brew --prefix)/opt/mcfly/mcfly.bash"
fi
source "$HOME/.cargo/env"
