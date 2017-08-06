# Load rvm so you can access Ruby
export PROMPT_COMMAND="my_custom_function; $PROMPT_COMMAND"
export HISTCONTROL=erasedups
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export EDITOR=nvim
echo "Hello, Mike"
# Take you to the dir of a file in a gem. e.g. `2gem rspec`
2gem () {
  cd "$(dirname $(gem which $1))"
}

alias rebash="source ~/.bash_profile"

# Frequent Projects
alias spoken="cd ~/projects/the-spoken-tour"
alias spoken-api="cd ~/projects/the-spoken-tour-api"
alias tmikeschu="cd ~/projects/personal-site"
alias backend="cd ~/Turing/backend-curriculum-site"
alias frontend="cd ~/Turing/front-end-curriculum"
alias bashpro="nvim ~/dotfiles/.bash_profile"
alias vimrc="nvim ~/dotfiles/.vimrc"
alias sourcebash="source ~/dotfiles/.bash_profile"
alias dotfiles="cd ~/dotfiles"
alias quikly="cd ~/quikly/src/quikly"

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

# give the fullpaths of files passed in argv or piped through stdin
function fullpath {
  ruby -e '
    $stdin.each_line { |path| puts File.expand_path path }  if ARGV.empty?
    ARGV.each { |path| puts File.expand_path path }         unless ARGV.empty?
  ' "$@"
}

# Enable git's tab-completion library
source /usr/local/etc/bash_completion.d/git-completion.bash

# Shortcut for bundle exec
alias be="bundle exec"

# Prompt
  function parse_git_branch {
    branch=`git rev-parse --abbrev-ref HEAD 2>/dev/null`
    if [ "HEAD" = "$branch" ]; then
      echo "(no branch)"
    else
      echo "$branch"
    fi
  }

  function prompt_segment {
    # for colours: http://en.wikipedia.org/wiki/ANSI_escape_code#Colors
    # change the 37 to change the foreground
    # change the 45 to change the background
    if [[ ! -z "$1" ]]; then
      echo "\[\033[${2:-35};49m\]${1}\[\033[0m\]"
    fi
  }

  function build_mah_prompt {
    # time
    ps1="$(prompt_segment " \@ ")"

    # cwd
    ps1="$(prompt_segment "\w")"

    # git branch
    git_branch=`parse_git_branch`
    if [[ ! -z "$git_branch" ]]
    then
      ps1="${ps1} $(prompt_segment " $git_branch " 33)"
    fi

    # next line
    ps1="${ps1}\n⚯  "

    # set prompt output
  # !PS1="⚯  \W >> "
    PS1="$ps1"
  }

  PROMPT_COMMAND='build_mah_prompt'
export PATH="/usr/local/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(nodenv init -)"

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

function quikly {
  cd ~/quikly/src/quikly
  heroku local -f Procfile.dev
}
