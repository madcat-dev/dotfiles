#!/bin/bash

DIR=$(dirname $0)
cd $DIR

PROFILE=${1:-$USER}

DATE=(`echo "$(date +'%F:%H*%M*%S')" | sed 's/:/\n/g'`)
let OFFSET="${DATE[1]}"

DEST="backup/$(date +%F)/${PROFILE}@$(hostname):${OFFSET}"

exit 0


echo $DEST
mkdir -p $DEST

