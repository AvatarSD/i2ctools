#!/bin/bash

i2cdetect -y -r $1 | awk '/[0-7][0]:/ { for(i=2; i<18; i++) if(match($i, "[0-9a-f]") > 0) print $i;}'

exit 0
