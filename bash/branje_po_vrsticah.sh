#!/bin/bash
while IFS=: read -r uporabnik _ uid _; do
    if [ "$uid" -ge 1000 ]; then
        echo "$uporabnik ($uid)"
    fi
done < /etc/passwd
