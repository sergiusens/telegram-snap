#!/usr/bin/env bash

if [ $(id -u) -ne 0 ]; then
    echo "Root context required please."
    exit 1
fi

for INTERFACE in \
    network-manager; do
    snap connect telegram-sergiusens:${INTERFACE} core:${INTERFACE}
done


