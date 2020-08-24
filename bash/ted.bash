export PATH="$PATH:${HOME}/code/ted/infrastructure/bin"

alias rvminstall='rvm install `cat .ruby-version`'
alias fomo='cd ~/code/ted/fomoconf'
alias twt='cd ~/code/ted/twt-checkin'
alias ems='cd ~/code/ted/ems'
alias concierge='cd ~/code/ted/concierge'
alias idea='cd ~/code/ted/tedster-lounge'
alias pwall='cd ~/code/ted/program-wall'
alias live='cd ~/code/ted/tedlive-frontend'
alias capstag='bundle exec cap staging deploy'
alias capprod='bundle exec cap production deploy'
alias chewbupu='chewbacca buildpush'
alias chewstag='chewbacca deploy -e staging'
alias chewprod='chewbacca deploy -e production'

function ted() {
  cd ~/code/ted/$1
}
