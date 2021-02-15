#!/bin/sh

VERSION=2.0.4

BASE=$(dirname $0)
BASE=$(dirname $BASE)

if [ $1 ]; then
    VERSION=$1
fi

PLATFORM=$(uname -m)
OS=$(uname -s)
GITHUB="https://github.com/skanehira/docui/releases/download"

URL="${GITHUB}/${VERSION}/docui_${VERSION}_${OS}_${PLATFORM}.tar.gz"

wget -O /tmp/docui.tar.gz $URL && \
    mkdir -p /tmp/docui > /dev/null 2>&1 && \
    tar -C /tmp/docui -xzf /tmp/docui.tar.gz && \
    cp /tmp/docui/docui ~/.local/bin/

rm -rf /tmp/docui
rm -f /tmp/docui.tar.gz
