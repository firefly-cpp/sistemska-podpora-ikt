#!/bin/sh
file=a.txt
if [ -w $file ]; then
    echo "Uporabnik ima pravico do pisanja datoteke $file."
elif [ -e $file ]; then
    echo "Uporabnik nima pravice do pisanja datoteke $file."
else
    echo "Datoteka $file ne obstaja."
fi
