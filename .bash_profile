echo "Hello, Mike"

export HISTCONTROL=erasedups
export EDITOR=nvim

if [[ $(uname -s) == Darwin ]]
then
  source $HOME/.set-defaults
fi

source $HOME/dotfiles/bash/PATH.bash
source $HOME/dotfiles/bash/aliases.bash
source $HOME/dotfiles/bash/git_completion.bash
source $HOME/dotfiles/bash/prompt.bash
source $HOME/dotfiles/bash/fullpath.bash
source $HOME/dotfiles/bash/2gem.bash
source $HOME/dotfiles/bash/languages.bash
source $HOME/dotfiles/bash/clinc.bash
PYTHONPATH="/home/$USER/lucida-clinc"
