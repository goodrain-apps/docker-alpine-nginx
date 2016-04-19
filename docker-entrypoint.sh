#!/bin/bash


if [ $# -gt 0 ];then
    exec "$@"
else
    exec /bin/s6-svscan /app/gogs/docker/s6/
fi
