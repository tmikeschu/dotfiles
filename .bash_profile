export HISTCONTROL=erasedups
export EDITOR=nvim

include () {
    [[ -f "$1" ]] && source "$1"
}

source $HOME/dotfiles/bash/aliases.bash
source $HOME/dotfiles/bash/git_completion.bash
source $HOME/dotfiles/bash/prompt.bash
source $HOME/dotfiles/bash/fullpath.bash
source $HOME/dotfiles/bash/2gem.bash
source $HOME/dotfiles/bash/languages.bash
source $HOME/dotfiles/bash/serverless.bash
source $HOME/dotfiles/bash/ted.bash
include $HOME/qmk_utils/activate_msys2.sh
source $HOME/dotfiles/bash/PATH.bash
source $HOME/dotfiles/.env.bash

if [[ -r "$(brew --prefix)/opt/mcfly/mcfly.bash" ]]; then
  source "$(brew --prefix)/opt/mcfly/mcfly.bash"
fi
