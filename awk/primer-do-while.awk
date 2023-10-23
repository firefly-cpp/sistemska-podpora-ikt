#!/usr/bin/awk -f

BEGIN {
	i=1;
	do {
		print i;
		i = i + 1
	}
	while (i < 20)
exit;
}
