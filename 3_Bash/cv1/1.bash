# Napište skript, který se uživatele postupně zeptá na dvě čísla. Po jejich zadání vypíše jejich pod í l . Ve skriptu ošetřete možnou chybu při dělení nulou.

#!/bin/bash

echo -n "Zadaj hodnotu A: " 
read A 
echo -n "Zadaj hodnotu B: "
read B

if [[ B -eq 0 ]]; then
  echo "Delenie nulov nie je mozne!"
  exit 0
fi

((C = A / B))
((D = A % B))
echo "C= $C (zbytok po deleni je $D)"

