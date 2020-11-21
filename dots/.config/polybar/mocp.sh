#!/bin/sh

CMD='urxvt -e mocp'

ID=$(ps ax | grep "${CMD}" | grep -v grep | awk '{ print $1 }')

case $1 in
info)
    echo "$(mocp --info | grep '^State:' | sed 's/^State://g'):$(mocp --info | grep '^Title:' | sed 's/^Title://g')"
    exit 0
    ;;
*)
    if [ $ID ]; then
        kill $ID
    else
        $CMD
    fi
    ;;
esac
