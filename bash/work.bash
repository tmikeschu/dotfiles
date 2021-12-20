function pst() {
  cd ~/code/ps/$1
}

export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"
export SBT_OPTS="-Xmx2G -XX:MaxPermSize=2G -Xss2M  -Duser.timezone=GMT"

awslocal() { aws --profile=localstack --endpoint-url=http://localhost:4566/ "$@"; }

