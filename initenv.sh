#!/bin/bash

# Copyright (c) 2019 P3TERX
# From https://github.com/P3TERX/Actions-OpenWrt

set -eo pipefail
export DEBIAN_FRONTEND=noninteractive

echo "Installing building components ..."
sudo -E apt-get -qq update
# shellcheck disable=SC2046
sudo -E apt-get -qq install $(grep -vE "^\s*#" packages.txt  | tr "\n" " ")
sudo -E apt-get -qq autoremove --purge
sudo -E apt-get -qq clean
sudo ln -sf /usr/share/zoneinfo/UTC /etc/localtime
