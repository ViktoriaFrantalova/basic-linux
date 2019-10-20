# Do terminálu vytiskněte obrys čtverce se znaků X. Délku strany čtverce zadá uzivatel.

#!/usr/bin/env bash

echo "Please write some number(example: 10) for size of the square?"
	read size

j=0
i=0
while [[ j -lt $size ]]; do
  while [[ i -lt $size ]]; do 
    if (( i == 0 | j == 0 | i == $size - 1 | j == $size - 1 )); then
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
# X        X
# X        X
# X        X
# X        X
# X        X
# X        X
# X        X
# X        X
# XXXXXXXXXX