[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

function quikly_server {
  cd ~/src/quikly
  heroku local -f Procfile.dev
}

