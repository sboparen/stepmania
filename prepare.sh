#!/bin/bash
set -e
cd "$(dirname $(readlink -f ${BASH_SOURCE[0]}))"
PACKAGES=(
libbz2-dev
libglew-dev
libudev-dev
)
for p in "${PACKAGES[@]}"; do
    sudo apt-get install $p
done
cd Build
cmake -G 'Unix Makefiles' ..
