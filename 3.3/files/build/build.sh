#!/bin/sh

#http_proxy="http://proxy:3128"
#export http_proxy
#https_proxy="http://proxy:3128"
#export https_proxy

set | grep proxy
env | grep proxy

apk update && \
apk add --no-cache bash git

echo 'gearbox:x:1000:1000:Gearbox user:/home/gearbox:/bin/bash' >> /etc/passwd
echo 'gearbox:$6$XdlAWysgxyUyxjAV$ivrS09OkFINgCUdHjUQYG68FqW/Dkyia1iB1AN2RpgqdmgGP4DtYOAj47C5xCX8pD5iOub0q6M66zBn2bX27m1:17927:0:99999:7:::' >> /etc/shadow
echo 'gearbox:x:1000:' >> /etc/group

mkdir /var/mail
chown -fhR gearbox:gearbox /project /home
chown -fhR root:root /etc /root /var

