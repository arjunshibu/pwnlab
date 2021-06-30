#!/usr/bin/env bash

latest=$(curl -s https://github.com/radareorg/radare2/releases/latest | grep 'href' | cut -d'"' -f2)
release=$(curl -s $latest | grep -E 'href.*radare2_.*_amd64\.deb' | cut -d'"' -f2)

wget -q https://github.com/$release -O r2.deb
dpkg -i r2.deb
rm r2.deb
