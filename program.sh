#!/bin/sh

docker \
    run \
    --interactive \
    --tty \
    --detach \
    --volume /tmp/.X11-unix:/tmp/.X11-unix \
    --env DISPLAY \
    --net host \
    ${EMACS_IMAGE} \
    ${@} &&
    true
