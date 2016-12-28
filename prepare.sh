#!/bin/bash
set -e
cd "$(dirname $(readlink -f ${BASH_SOURCE[0]}))"
PACKAGES=(
libbz2-dev
libglew-dev
libudev-dev
)
sudo apt install "${PACKAGES[@]}"
cd Build
cmake -DCMAKE_BUILD_TYPE=Release -G 'Unix Makefiles' ..
