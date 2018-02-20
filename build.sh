#!/bin/bash
set -e
cd "$(dirname $(readlink -f ${BASH_SOURCE[0]}))"
# Download cel noteskin if needed.
(
    cd NoteSkins/dance
    if ! test -e USWCelSM5; then
	rm -f USWCelSM5.rar
	wget http://zettbou.co.uk/Unlimited_Stepman_Works/_Noteskin/SM5/Dance/USWCelSM5.rar
	sha1sum --strict --check USWCelSM5.sha1sum
	unrar x USWCelSM5.rar
    fi
)
# Build stepmania.
cd Build
cmake -G 'Unix Makefiles' -DCMAKE_BUILD_TYPE=Release -DWITH_MINIMAID=OFF ..
cmake ..
make -j8
