export PYTHONPATH="/home/$USER/lucida-clinc"
export CLINC_PATH="/home/$USER/lucida-clinc"

# socks on
function sockson() {
  networksetup -setsocksfirewallproxy Wi-fi 127.0.0.1 5000
  networksetup -setsocksfirewallproxystate Wi-fi on
  ssh -f -N -D 5000 -oProxyCommand="ssh -W %h:%p mike.schutte@cdn.clinc.ai" mike.schutte@himalayas -q
}

# socks off
function socksoff() {
  networksetup -setsocksfirewallproxy Wi-fi "" ""
  networksetup -setsocksfirewallproxystate Wi-fi off
}

function clplat() {
  ssh -J mike.schutte@cdn.clinc.ai mike.schutte@himalayas -q -t tmux attach-session
}
alias clsite="cd ~/clinc/clinc-website/clinc/"
alias clogger="tail -f /var/log/lucida/logdata/logger.log"
alias clapache="tail -f /var/log/lucida/logdata/apache_error.log"

# clean all persistence so that next time we do `docker-compose up -d` everything will be clean
alias clean_persist='sudo rm -rf /var/log/lucida/lib/mysql/ && sudo rm -rf /var/log/lucida/files/ && sudo mkdir /var/log/lucida/files && sudo chmod 777 /var/log/lucida/files'

# run spotlight mocha tests
alias mocha_test='docker exec lucida-clinc_admin-console-server_1 node_modules/mocha/bin/mocha tests'

# run django tests
alias django_test='docker exec -it lucida-clinc_clinc-api-server_1 ./clincapi/manage.py test --keepdb --verbosity 3'

# get a mysql shell
alias mysql='docker exec -it lucida-clinc_mysql-server_1 mysql --user=clincdev --password=yesiamtherealclincdev --port=3306 finie_db'

# touch wsgi in web container
alias wsgi='docker exec lucida-clinc_clinc-api-server_1 touch ./clincapi/common/wsgi.py'

# manage script in web container
alias manage='docker exec -it lucida-clinc_clinc-api-server_1 ./clincapi/manage.py'

# grep all python files in this tree
alias pygrep='find . -name "*.py" | xargs grep -rn'

# follow the django logs
alias django-logs='tail -f /var/log/lucida/apache2/error.log'

# run npm commands on the admin console container
function dnpm() {
    docker cp $CLINC_PATH/web/adminconsole/.eslintignore lucida-clinc_admin-console-server_1:/usr/local/lucida-clinc/web/adminconsole/.eslintignore
    docker cp $CLINC_PATH/web/adminconsole/.eslintrc.json lucida-clinc_admin-console-server_1:/usr/local/lucida-clinc/web/adminconsole/.eslintrc.json
    docker cp $CLINC_PATH/web/adminconsole/package.json lucida-clinc_admin-console-server_1:/usr/local/lucida-clinc/web/adminconsole/package.json
    echo npm "$@"
    docker exec --user root -it lucida-clinc_admin-console-server_1 npm --prefix=/usr/local/lucida-clinc/web/adminconsole "$@"
    docker cp lucida-clinc_admin-console-server_1:/usr/local/lucida-clinc/web/adminconsole/package.json $CLINC_PATH/web/adminconsole/package.json
    docker cp lucida-clinc_admin-console-server_1:/usr/local/lucida-clinc/web/adminconsole/package-lock.json $CLINC_PATH/web/adminconsole/package-lock.json
}


alias dc='docker-compose'
alias dcu='dc up -d'
alias dcd='dc down'
alias dcl='dc logs -f admin-console-server'
alias dockpocalypse='git stash apply && dcd && make docker && dcu && gc -- . && dcl'
alias dockfresh='git stash apply && dcu && gc -- . && dcl'
