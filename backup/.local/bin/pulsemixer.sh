#!/bin/sh

CMD='urxvt -e pulsemixer'

ID=$(ps ax | grep "${CMD}" | grep -v grep | awk '{ print $1 }')

if [ $ID ]; then
    kill $ID
else
    $CMD
fi
