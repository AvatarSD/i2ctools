#!/bin/bash

if [ "$1" -le -1 -a "$1" -ge 256 ] ; then
        echo "Need chip address at first argument!\n And end addr at second"
        exit 1
fi

while [ 1 ]; do
for ((i=0; i<=$2; i++)); do
	printf "$i: "
	i2cset -y -r 2 $1 $i $((RANDOM%256))
        if [ ! $? -eq 0 ]; then
                exit 1
        fi
done
done

