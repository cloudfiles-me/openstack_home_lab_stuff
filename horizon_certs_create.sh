#!/bin/bash

export ANSWER_FILE="/root/answer.txt"

cd /etc/pki/tls/certs/
openssl req -x509 -sha256 -newkey rsa:2048 -keyout selfkey.key -out selfcert.crt -days 1024 -nodes -subj "/C=MX/ST=CDMX/L=CDMX/O=HOME/OU=LAB/CN=openstack.home.lab"
mv selfkey.key /etc/pki/tls/private/selfkey.key
mkdir -p ~/packstackca/certs/

#crudini --set  $ANSWER_FILE general CONFIG_SSL_CERT_DIR /root/packstackca/

#cp /etc/pki/tls/certs/ssl_vnc.crt ~/packstackca/certs/`(ifconfig eth0 | grep 'inet' |  awk 'NR==1{ print $2}')`ssl_vnc.crt

exit

