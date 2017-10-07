echo "Hello, Mike"

export HISTCONTROL=erasedups
export EDITOR=nvim
eval "$(rbenv init -)"
eval "$(nodenv init -)"

source $HOME/.set-defaults
source $HOME/dotfiles/bash/PATH.bash
source $HOME/dotfiles/bash/aliases.bash
source $HOME/dotfiles/bash/git_completion.bash
source $HOME/dotfiles/bash/prompt.bash
source $HOME/dotfiles/bash/fullpath.bash
source $HOME/dotfiles/bash/quikly.bash
source $HOME/dotfiles/bash/2gem.bash

