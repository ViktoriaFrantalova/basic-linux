# Do terminálu vytiskněte pravoúhlý trojúhelník se znaků X , tak aby jedna odvěsna byla umístěna dole a druhá na levé straně. Délku odvěsny zadá uživatel.

#!/usr/bin/env bash

echo "Please write some number(example: 10) for size of the square?"
	read size

for (( i=1; i<$size; i++)); do
	for (( j=$size-i; j<$size; j++ )); do
		printf "X"
	done
	printf "\n"
done
