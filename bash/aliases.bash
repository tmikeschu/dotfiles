alias rebash="source ~/.bash_profile"

# shell commands
alias grepd="grep -Rin --color"

# Frequent Projects
alias spoken="cd ~/projects/the-spoken-tour"
alias spoken-api="cd ~/projects/the-spoken-tour-api"
alias tmikeschu="cd ~/projects/personal-site"
alias bashpro="nvim ~/dotfiles/.bash_profile"
alias vimrc="nvim ~/dotfiles/.vimrc"
alias dotfiles="cd ~/dotfiles"

#  Quikly
alias quikly="cd ~/src/quikly"
alias admin-ui="cd ~/src/quikly-admin-ui"
alias graphql="cd ~/src/graphql-explorer"
alias story="npm run storybook"

# Testing
alias cr='clear & be rspec'
alias citest='CI=true npm test'

# Chrome shortcuts
alias rails_guide="open http://guides.rubyonrails.org/index.html"
alias ruby_docs="open http://ruby-doc.org/"

# Git aliases
alias gs="git status"
alias gd="git diff --patience --ignore-space-change"
alias gc="git checkout"
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
alias gush='git push'
alias gremote='git remote'

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
