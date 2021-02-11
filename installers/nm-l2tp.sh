#!/bin/sh

PPPD_VERSION=$(pppd --version 2>&1)       
PPPD_VERSION=$(echo "$PPPD_VERSION" | awk '{print $3}')

PPPD_PLUGIN_DIR="/usr/lib/pppd/$PPPD_VERSION"
LIBEXECDIR="/usr/lib/NetworkManager"

TMP_DIR="/tmp/nm-l2tp-$(date +'%s')"

sudo pacman -S xl2tpd

if [[ ! -d $PPPD_PLUGIN_DIR ]]; then
    echo "Error: pppd plugin dir not exists"
    exit 1
fi

if [[ ! -d $LIBEXECDIR ]]; then
    echo "Error: libexec dir not exists"
    exit 1
fi


git clone https://github.com/nm-l2tp/NetworkManager-l2tp.git $TMP_DIR || exit 1

cd $TMP_DIR

./autogen.sh && \
./configure --disable-static --prefix=/usr \
    --with-pppd-plugin-dir=$PPPD_PLUGIN_DIR \
    --libexecdir=$LIBEXECDIR \
    --runstatedir=/run && \
make && \
sudo make install

