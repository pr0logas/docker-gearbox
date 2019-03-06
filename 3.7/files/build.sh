#!/bin/sh

#http_proxy="http://proxy:3128"
#export http_proxy
#https_proxy="http://proxy:3128"
#export https_proxy

set | grep proxy
env | grep proxy

apk update && \
apk add --no-cache bash shadow && \
groupadd -g 1000 gearbox && \
mkdir /var/mail && \
useradd -d /home/gearbox -c "Gearbox user" -u 1000 -g 1000 -N -s /bin/bash gearbox && \
chown -fhR gearbox:gearbox /project /home && \
chown -fhR root:root /etc /root /var

