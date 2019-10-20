# Napiste skript(y), kt. vykresly na terminal stvorec zo znaku "*"(8 bodov)jeho uhlopriecka pomocou znaku "#" a zbytok pomocou "O"(12b). Rozmery stvorca zada uzivatel ako argument skriptu (5b). Osetrenie vstupu (5b)

# #********#
# *#OOOOOO#*
# *O#OOOO#O*
# *OO#OO#OO*
# *OOO##OOO*
# *OOO##OOO*
# *OO#OO#OO*
# *O#OOOO#O*
# *#OOOOOO#*
# #********#

#!/usr/bin/env bash

echo "Prosim zadajte nejake cele cislo?"
	read size

if [[ $size == 0 ]]; then
    echo "Zadajte iny parameter"
    exit 1
else
  for (( j=0; j < $size; j++ )); do
    for (( i=0; i < $size; i++ )); do 
      if [[ i -eq 0 || j -eq 0 || i -eq $((size - 1)) || j -eq $((size - 1)) || i -eq j || j -eq $((size - 1 - i)) ]]  ; then
        if [[ i -eq j || j -eq $((size - 1 - i)) ]]; then
          echo -n "#"
        else
          echo -n \*
        fi 
      else
        echo -n "O"
      fi
    done
    echo ""
  done
  exit 0
fi
