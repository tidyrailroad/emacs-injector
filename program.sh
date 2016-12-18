#!/bin/sh

docker \
    run \
    --interactive \
    --tty \
    --detach \
    ${EMACS_IMAGE} \
    ${@} &&
    true
