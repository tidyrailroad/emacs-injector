#!/bin/sh

apk update &&
    apk upgrade &&
    apk add docker &&
    true
