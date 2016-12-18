#!/bin/sh

SRC=${1} &&
    ( [ ! -f /root/bin/emacs ] || ( echo "There is already a file there." && exit 64 )) &&
    ( [ ! -d /root/bin/emacs ] || ( echo "There is already a directory there." && exit 65 )) &&
    ( [ ! -x /root/bin/emacs ] || ( echo "There is already a device there." && exit 66 )) &&
    docker pull ${EMACS_IMAGE} &&
    sed \
	-e "s#\${EMACS_IMAGE}#${EMACS_IMAGE}#" \
	-e "s#\${SRC}#${SRC}#" \
	-e "w/root/bin/emacs" \
	/opt/docker/program.sh &&
    chmod 0500 /root/bin/emacs &&
    true
