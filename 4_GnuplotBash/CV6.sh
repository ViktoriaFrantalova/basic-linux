# Vytvořte skript, který vytvoří deset souborů. Jméno souboru bude ve formátu XX.txt, kde XX je číslo souboru. Pokud je číslo souboru menší než deset, tak jako první cifru v názvu použijte znak 0. Každý soubor bude obsahovat následující text (X je číslo souboru):

#!/bin/bash

for((I=1;I<=10;I++));do
  echo $I
  NAME=`printf "%02d.txt" $I`
  cat << EOF > $NAME
Automaticky vytvoreny subor cislo suboru: $I 
EOF
done 