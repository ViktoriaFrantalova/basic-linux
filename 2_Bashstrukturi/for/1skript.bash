# Do terminálu vytiskněte čtverec se znaků X. Délku strany čtverce zadá uzivatel.?

#!/usr/bin/env bash

echo "Please write some number (example: 10) for size of the square?"
	read size

for ((i = 0; i < $size; i++)); do
	for ((j = 0; j < $size; j++)); do
		printf "X"
	done
	printf "\n"
done
