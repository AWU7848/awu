#!/bin/sh
	awk 'NR==FNR{
		a[$1]=1
	}
	NR!=FNR{
		a[$i]++
	}
	END{
	for(i in a)
		if(a[i]>1)
			print i
	}' a.txt b.txt
