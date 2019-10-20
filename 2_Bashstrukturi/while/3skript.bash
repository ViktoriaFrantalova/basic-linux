# Do terminálu vytiskněte pravoúhlý trojúhelník se znaků X , tak aby jedna odvěsna byla umístěna dole a druhá na levé straně. Délku odvěsny zadá uživatel.

#!/usr/bin/env bash

echo "Please write some number (example: 10) for size of the square?"
	read size

i=0
while [[ i -lt $size ]]; do 
  j=$size-i
  while [[ j -lt $size ]]; do
  echo -n "X"
((j++)) #  ((j = j + 1))
  done
echo ""
((i++)) # ((i = i + 1))
done

# X    
# XX                                                        # XXX  
# XXXX 
# XXXXX
# XXXXXX
# XXXXXXX
# XXXXXXXX
# XXXXXXXXX