#!/bin/bash
set -e
cd "$(dirname $(readlink -f ${BASH_SOURCE[0]}))"
cd Build
cmake ..
cmake ..
make
