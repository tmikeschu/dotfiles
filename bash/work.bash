function pst() {
  cd ~/code/ps/$1
}

export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"
