awk 'NR==FNR{
		a[$1]=$2
	}
	NR!=FNR{
		printf "%-8s%-8s%-8s\n",$1,$2,a[$1]
	}' $1 $2
