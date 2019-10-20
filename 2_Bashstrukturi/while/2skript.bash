
# Do terminálu vytiskněte pravoúhlý trojúhelník se znaků X , tak aby jedna odvěsna byla umístěna nahoře a druhá na levé straně. Délku odvěsny zadá uživatel.

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

#!/usr/bin/env bash

echo "Please write some number (example: 10) for size of the square?"
	read size

i=0
while [[ i -lt $size ]]; do 
  j=i
  while [[ j -lt $size ]]; do
  echo -n "X" 
  ((j++)) #  ((j = j + 1))
  done
echo ""
((i++)) # ((i = i + 1))
done

