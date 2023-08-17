#!/bin/sh

echo -n "Vnesi ime: "
read ime
if [-n "$ime"]; then
    echo "Pozdravljen $ime!"
    exit 0
else
    echo "Ime ni bilo vnešeno."
    exit 1
fi
