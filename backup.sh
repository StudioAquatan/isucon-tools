#!/bin/bash

set -eu

# Set remote host information

EXIT_STATUS=0

if [ -z ${ISUCON_USER+UNDEF} ]; then
    echo "ISUCON_USER is not set"
    EXIT_STATUS=1
fi

if [ -z ${ISUCON_PASSWORD+UNDEF} ]; then
    echo "ISUCON_PASSWORD is not set"
    EXIT_STATUS=1
fi

if [ -z ${ISUCON_HOST+UNDEF} ]; then
    echo "ISUCON_HOST is not set"
    EXIT_STATUS=1
fi

if [ $EXIT_STATUS -eq 1 ]; then
    echo "Exit 1."
    exit 1
fi

echo "Start to backup remote files."

scp -i ${HOME}/.ssh/isucon -r ${ISUCON_USER}@${ISUCON_HOST}:/home/isucon ${HOME}/Documents/ISUCON/

echo "Done"

