# Do terminálu vytiskněte čtverec se znaků X. Délku strany čtverce zadá uzivatel.?

#!/bin/bash

echo "Please write some number (example: 10) for size of the square?"
	read size


i=0
while [[ i -lt "$size" ]]; do 
	j=0
	while [[ j -lt "$size" ]]; do
		echo -n "X"
		((j++))
	done
	echo " "
	((i++))
done

#XXXXXXXXXX
#XXXXXXXXXX
#XXXXXXXXXX
#XXXXXXXXXX
#XXXXXXXXXX
#XXXXXXXXXX
#XXXXXXXXXX
#XXXXXXXXXX
#XXXXXXXXXX
#XXXXXXXXXX

