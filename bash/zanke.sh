#!/bin/bash
for sadje in jabolko hruska sliva; do
 echo "Sadje: $sadje"
done

n=3
while [ "$n" -gt 0 ]; do
 echo "Še $n"
 n=$((n - 1))
done
