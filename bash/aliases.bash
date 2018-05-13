alias rebash="source ~/.bash_profile"

# shell commands
alias grepd="grep -Rin --exclude-dir={node_modules,.git} --color"

# Frequent Projects
alias spoken="cd ~/projects/the-spoken-tour"
alias spoken-api="cd ~/projects/the-spoken-tour-api"
alias tmikeschu="cd ~/projects/personal-site"
alias bashpro="nvim ~/dotfiles/.bash_profile"
alias vimrc="nvim ~/dotfiles/.vimrc"
alias dotfiles="cd ~/dotfiles"
alias gocode="cd ~/go/src/github.com"

#  Quikly
alias quikly="cd ~/q/quikly"
alias quikly-full="ttab 'quikly; rails c' && ttab 'quikly; nvim .' && quikly &&
  heroku local -f Procfile.dev"
alias admin-ui="cd ~/q/quikly-admin-ui"
alias graphql="cd ~/q/graphql-explorer"
alias story="npm run storybook"
alias qemail="cd ~/q/quikly-email-service"
alias qclaim="ttab 'cd ~/go/src/github.com/quikly/quikly-claim/client; nvim .' &&
  cd ~/go/src/github.com/quikly/quikly-claim/server && nvim ."

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
alias grefresh='getch && grebase && bundle && yarn install && rails db:{migrate,test:prepare}'
alias gash='git stash'

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
