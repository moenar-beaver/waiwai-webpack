#!/bin/bash

# user1の作成
USER_NAME_1="user1"
PASSWD_1="hoge01"
CRYPTPASS_1=`openssl passwd -crypt ${PASSWD_1}`

echo "${USER_NAME_1}:${CRYPTPASS_1}" >> /etc/nginx/.htpasswd