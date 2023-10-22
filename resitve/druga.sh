#!/bin/bash

for ((i=1; i<=20; i++)); do
    if ((i % 2 == 0)); then
        echo "$i je sodo."
    else
        echo "$i je liho."
    fi
done
