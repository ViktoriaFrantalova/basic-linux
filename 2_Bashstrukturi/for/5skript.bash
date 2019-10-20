# Do terminálu vytiskněte obrys čtverce a jeho uhlopříčky se znaků X . Délku strany čtverce zadá uživatel.

#!/usr/bin/env bash

echo "Please write some number(example: 10) for size of the square?"
	read size

for (( j=0; j < $size; j++ )); do
  for (( i=0; i < $size; i++ )); do 
    if (( i == 0 | j == 0 | i == $size - 1 | j == $size - 1 | i == j | j == $size - 1 - i )); then
      echo -n "X"
    else
      echo -n " "
    fi
  done
  echo ""
done
