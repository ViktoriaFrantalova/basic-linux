# Do terminálu vytiskněte obrys čtverce a jeho uhlopříčky se znaků X . Délku strany čtverce zadá uživatel.

#!/usr/bin/env bash

echo "Please write some number(example: 10) for size of the square?"
	read size

j=0
i=0
while [[ j -lt $size ]]; do
  while [[ i -lt $size ]]; do 
    if (( i == 0 | j == 0 | i == $size - 1 | j == $size - 1 | i == j | j == $size - 1 - i )); then
      echo -n "X"
    else
      echo -n " "
    fi
    ((i++))
  done
  ((i=0))
  ((j++))
  echo ""
done

# XXXXXXXXXX
# XX      XX
# X X    X X
# X  X  X  X
# X   XX   X
# X   XX   X
# X  X  X  X
# X X    X X
# XX      XX
# XXXXXXXXXX