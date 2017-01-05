#!/bin/bash
set -e
d="$(dirname $(readlink -f ${BASH_SOURCE[0]}))"
# Download Cel noteskin.
cd "$d"/NoteSkins/dance
if ! test -e USWCelSM5; then
    rm -f USWCelSM5.rar
    wget http://zettbou.co.uk/Unlimited_Stepman_Works/_Noteskin/SM5/Dance/USWCelSM5.rar
    sha1sum --strict --check USWCelSM5.sha1sum
    unrar x USWCelSM5.rar
fi
# Download Simply Love theme.
cd "$d"/Themes
if ! test -e 'Simply Love'; then
    rm -f Simply.Love.v3.zip
    wget https://github.com/dguzek/Simply-Love-SM5/releases/download/3.0/Simply.Love.v3.zip
    sha1sum --strict --check Simply.Love.v3.sha1sum
    unzip Simply.Love.v3.zip
fi
