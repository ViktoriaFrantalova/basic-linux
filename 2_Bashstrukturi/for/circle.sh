# Vykreslete kruh z písmen " X ". Poloměr kruhu zadá uživatel po spuštění

#!/bin/bash

echo "Please write some number(example: 10) for size of the circle?"
	read size

r=$size
r2=$((r-2))

for ((i=0;i<2*r;i++)); do
	for ((j=0;j<2*r;j++)); do
		a1=$((j-r))
		a2=$((i-r))
		a12=$((a1*a1))
		a22=$((a2*a2))
		a3=$((a12+a22))
		if [[ ($a3 -lt $r*$r) && ($a3 -gt $r2*$r2) ]]; then 
			echo -n "X"
		else
			echo -n " "
		fi
	done
	echo ""
done


