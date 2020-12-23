export HISTCONTROL=erasedups
unsetopt inc_append_history
setopt no_share_history
unsetopt share_history
export EDITOR=nvim
export TERM="xterm-256color"
export COMPOSE_DOCKER_CLI_BUILD=1
export DOCKER_BUILDKIT=1

include () {
    [[ -f "$1" ]] && source "$1"
}

source $HOME/dotfiles/bash/PATH.bash
source $HOME/dotfiles/bash/aliases.bash
source $HOME/dotfiles/bash/git_completion.bash
source $HOME/dotfiles/bash/work.bash

if [[ -r "$HOME/dotfiles/.env.bash" ]]; then
  source $HOME/dotfiles/.env.bash
fi

eval "$(starship init zsh)"

if [[ -r "$(brew --prefix)/opt/mcfly/mcfly.zsh" ]]; then
  source "$(brew --prefix)/opt/mcfly/mcfly.zsh"
fi

export MANPAGER="sh -c 'col -bx | bat -l man -p'"
