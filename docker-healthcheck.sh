#!/bin/sh

nc -z 127.0.0.1 $WTEE_PORT > /dev/null || exit 1
