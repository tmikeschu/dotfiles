# clean all persistence so that next time we do `docker-compose up -d` everything will be clean
alias clean_persist='sudo rm -rf /var/log/lucida/lib/mysql/ && sudo rm -rf /var/log/lucida/files/ && sudo mkdir /var/log/lucida/files && sudo chmod 777 /var/log/lucida/files'

# run spotlight mocha tests
alias mocha_test='docker exec lucidaclinc_admin-console-server_1 node_modules/mocha/bin/mocha tests'

# run django tests
alias django_test='docker exec -it lucidaclinc_clinc-api-server_1 ./clincapi/manage.py test --keepdb --verbosity 3'

# get a mysql shell
alias mysql='docker exec -it lucidaclinc_mysql-server_1 mysql --user=clincdev --password=yesiamtherealclincdev --port=3306 finie_db'

# touch wsgi in web container
alias wsgi='docker exec lucidaclinc_clinc-api-server_1 touch ./clincapi/common/wsgi.py'

# manage script in web container
alias manage='docker exec -it lucidaclinc_clinc-api-server_1 ./clincapi/manage.py'

# grep all python files in this tree
alias pygrep='find . -name "*.py" | xargs grep -rn'

# follow the django logs
alias django-logs='tail -f /var/log/lucida/apache2/error.log'

# run npm commands on the admin console container
function dnpm() {
    echo npm "$@"
    docker exec -it lucidaclinc_admin-console-server_1 npm --prefix=/usr/local/lucida-clinc/web/adminconsole "$@"
    docker cp lucidaclinc_admin-console-server_1:/usr/local/lucida-clinc/web/adminconsole/package.json $CLINC_PATH/web/adminconsole/package.json
    docker cp lucidaclinc_admin-console-server_1:/usr/local/lucida-clinc/web/adminconsole/package-lock.json $CLINC_PATH/web/adminconsole/package-lock.json
}

alias dc='docker-compose'
alias dcu='dc up -d'
alias dcd='dc down'
alias dcl='dc logs -f admin-console-server'