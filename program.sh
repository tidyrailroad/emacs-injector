#!/bin/sh

docker \
    run \
    --interactive \
    --tty \
    --detach \
    --volume /tmp/.X11-unix:/tmp/.X11-unix \
    --env DISPLAY \
    --net host \
    --volume ${SRC}:/usr/local/src \
    --workdir /usr/local/src \
    ${EMACS_IMAGE} \
    ${@} &&
    true
