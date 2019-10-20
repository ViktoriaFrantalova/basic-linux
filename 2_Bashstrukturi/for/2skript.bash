# # Do terminálu vytiskněte pravoúhlý trojúhelník se znaků X , tak aby jedna odvěsna byla umístěna nahoře a druhá na levé straně. Délku odvěsny zadá uživatel.

#!/usr/bin/env bash

echo "Please write some number(example: 10) for size of the square?"
	read size

for (( i = 0; i < $size; i++ )); do
	for (( j = i; j < $size; j++ )); do
		printf "X"
	done
	printf "\n"
done

# XXXXXXXXXX
# XXXXXXXXX 
# XXXXXXXX  
# XXXXXXX   
# XXXXXX 
# XXXXX  
# XXXX   
# XXX    
# XX     
# X 