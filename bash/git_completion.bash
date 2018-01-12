# Enable git's tab-completion library
source ~/.git-completion.bash
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash

  __git_complete gc _git_checkout
  __git_complete gb _git_branch
  __git_complete grebase _git_rebase
  __git_complete gush _git_push
fi
