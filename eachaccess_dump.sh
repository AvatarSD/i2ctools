#!/bin/bash

if [ "$1" -le -1 -a "$1" -ge 256 ] ; then
        echo "Need chip address at first argument!"
        exit 1
fi

while [ 1 ]; do
        i2cdump -y 2 $1
        if [ ! $? -eq 0 ]; then
                exit 1
        fi
done

