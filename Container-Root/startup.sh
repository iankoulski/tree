#!/bin/sh

# Container startup script

if [ -z "${1}" ]; then
	tree /wd
else
	tree $@
fi

