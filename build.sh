#!/bin/bash
set -e
cd "$(dirname $(readlink -f ${BASH_SOURCE[0]}))"
cd Build
cmake -G 'Unix Makefiles' -DCMAKE_BUILD_TYPE=Release -DWITH_MINIMAID=OFF ..
cmake ..
make -j8
