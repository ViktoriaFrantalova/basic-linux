# Napište skript, který vytvoří adresář, jehož jméno zadá uživatel po spuštění skriptu. Ošetřete chybovou situaci způsobenou tím, že vytvářený adresář již existuje.

#!/bin/bash

echo -n "Zadaj nazov priecinku: " 
read NAZOV_PRIECINKU

if [[ (-d "$NAZOV_PRIECINKU") ]]; then
  echo "Priecinok s nazvom: $NAZOV_PRIECINKU uz existuje"
  exit 1
else 
  mkdir $NAZOV_PRIECINKU
  echo "Priecinok s nazvom: $NAZOV_PRIECINKU bol vytvoreny"
  exit 0
fi


