#!/bin/sh
a=1
b=$(( $a+4 ))
echo "$a+$b"
echo "$(($a+$b))"
