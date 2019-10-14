#!/bin/sh
NR==FNR {
	w[NR]=$0;
    n=NR
}
NR>FNR {
    flag=0;
    for(i=1;i<=n;i++)
    	if(w[i] == $0){
        	flag=1;
            break;
        }
        if(flag == 0)
           	print $0;
}
