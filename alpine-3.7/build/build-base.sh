#!/bin/sh

case "${GEARBOX_CONTAINER_VERSION}" in
	"alpine-3.3")
		APKS="bash git rsync sudo"
		;;

	"alpine-3.4")
		APKS="bash git rsync sudo"
		;;

	*)
		APKS="bash git shadow rsync sudo"
		;;
esac

apk update && apk add --no-cache ${APKS}

GROUP=$(grep ^gearbox /etc/group)
if [ "${GROUP}" == "" ]
then
	echo "# Adding gearbox group."
	GROUPADD="$(which groupadd)"
	if [ "${GROUPADD}" == "" ]
	then
		echo 'gearbox:x:1000:' >> /etc/group
	else
		groupadd -g 1000 gearbox
	fi
fi

if [ ! -d /var/mail ]
then
	echo "# Creating /var/mail."
	mkdir /var/mail
fi

PASSWD=$(grep ^gearbox /etc/passwd)
if [ "${PASSWD}" == "" ]
then
	echo "# Adding gearbox user."
	GROUPADD="$(which groupadd)"
	if [ "${GROUPADD}" == "" ]
	then
		echo 'gearbox:x:1000:1000:Gearbox user:/home/gearbox:/bin/bash' >> /etc/passwd
		echo 'gearbox:$6$XdlAWysgxyUyxjAV$ivrS09OkFINgCUdHjUQYG68FqW/Dkyia1iB1AN2RpgqdmgGP4DtYOAj47C5xCX8pD5iOub0q6M66zBn2bX27m1:17927:0:99999:7:::' >> /etc/shadow
	else
		useradd -d /home/gearbox -c "Gearbox user" -u 1000 -g 1000 -N -s /bin/bash gearbox
	fi
fi

if [ -d "/build/rootfs/" ]
then
	echo "# Setting gearbox rootfs."
	chown -fhR root:root /build/rootfs
	chown -fhR gearbox:gearbox /build/rootfs/project /build/rootfs/projects /build/rootfs/home/gearbox
	rsync -HvaxP /build/rootfs/ /
fi

echo "# Finished."
