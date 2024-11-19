BEGIN { print "Zacetek sestevanja..." }
{ vsota += $1 }
END { print "Skupno:", vsota }
