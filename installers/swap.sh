#!/bin/sh

BASE=$(dirname $0)
BASE=$(dirname $BASE)

SERVICE="/etc/systemd/swap.conf.d"
CONFIG="zswap_enabled=0\nzram_enabled=1\nswapfc_enabled=1"

sudo pacman -S systemd-swap

sudo mkdir -p "${SERVICE}" > /dev/null 2>&1

sudo /bin/sh -c "echo -e \"${CONFIG}\" > ${SERVICE}/myswap.conf"

sudo systemctl daemon-reload
sudo systemctl enable systemd-swap
sudo systemctl restart systemd-swap

systemctl status systemd-swap
