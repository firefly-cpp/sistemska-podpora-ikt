#!/bin/awk -f
{
    vsota += $1
    stevec++
}
END {
    if (stevec > 0) {
        print "Povprecje:", vsota / stevec
    } else {
        print "Manjkajoci podatki."
    }
}
