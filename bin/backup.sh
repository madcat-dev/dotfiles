#!/bin/sh

DIR=$(dirname $0)

PROFILE=${1:-$USER}

if [[ ! -d $PROFILE ]]; then
    PROFILE="/home/$PROFILE"

    if [[ ! -d $PROFILE ]]; then
        echo "Not found profile"
        exit 1
    fi
fi

DATE=(`echo "$(date +'%F:%H*%M*%S')" | sed 's/:/\n/g'`)
let OFFSET="${DATE[1]}"

DEST="backup/$(date +%F)/$(basename $PROFILE)@$(hostname):$OFFSET"
echo $PROFILE
echo $DEST

exit 0


cd $DIR
mkdir -p $DEST

