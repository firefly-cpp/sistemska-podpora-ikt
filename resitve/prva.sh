#!/bin/bash

# prvi del | preverimo ce je podan argument
if [ $# -ne 1 ]; then
    echo "Ni podanega argumenta."
    exit 1
fi

datoteka="$1"

# ali datoteka sploh obstaja
if [ -e "$datoteka" ]; then
    echo "Datoteka $datoteka obstaja."
else
    # ustvarimo datoteko in vpisimo text v datoteko
    echo "Bash!" > "$datoteka"
    echo "Datoteka $datoteka ustvarjena."
fi

