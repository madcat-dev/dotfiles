#!/bin/sh

SRC=/tmp/picom

git clone https://github.com/ibhagwan/picom.git $SRC && \
    cd $SRC && \
    git submodule update --init --recursive && \
    meson --buildtype=release . build && \
    ninja -C build install

rm -rf $SRC
