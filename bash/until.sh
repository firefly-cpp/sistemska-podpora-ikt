#!/bin/bash

stevec=30

until [ $stevec -lt 1 ]
do
  echo Stevec: $stevec
  ((stevec--))
done
