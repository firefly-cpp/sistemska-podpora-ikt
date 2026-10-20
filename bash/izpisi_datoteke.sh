#!/bin/bash
for f in *.sh; do
    [ -e "$f" ] || continue
    echo "Datoteka: $f"
done
