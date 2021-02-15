#!/bin/bash

DIR=$(dirname $0)
cd $DIR

PROFILE=${1:-$USER}
let OFFSET="$(date +'%H * %M * %S')"
DEST="backup/$(date +%F)/${PROFILE}@$(hostname):${OFFSET}"

echo $DEST
mkdir -p $DEST

