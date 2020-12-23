alias rebash="source ~/.bash_profile"

# shell commands
alias grepd="grep -Rin --exclude-dir={node_modules,.git} --color"
alias ttab="osascript -e 'tell application \"Terminal\" to activate' -e 'tell application \"System Events\" to tell process \"Terminal\" to keystroke \"t\" using command down'"

# Frequent Projects
alias dotfiles="cd ~/dotfiles"

# Git aliases
alias gst="git status"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gommit="git commit"
alias gb="git branch"
alias gh="git hist"
alias glod='git log --graph --pretty="%Cgreen%h%Creset%Cblue%d%Creset %Cred%an%Creset: %s"'
alias getch='git fetch'
alias grebase='git rebase'
alias grontinue='git rebase --continue'
alias grip='git rebase --skip'
alias grabort='git rebase --abort'
alias gatswhatisaid='git commit --amend --no-edit'

# fancy ls command
# -l  long format
# -F  / after dirs, * after exe, @ after symlink
# -G  colorize
# -g suppress owner
# -o suppress group
# -h humanize sizes
# -q print nongraphic chars as question marks
alias l="ls -lFGgohq"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -GFh'

# Shortcut for bundle exec
alias be="bundle exec"

alias dc="docker-compose"
function dbu(){
  docker-compose down -v && docker-compose build && docker-compose up
}

function dcbu(){
  docker-compose down -v && chewbacca compose build && docker-compose up
}
