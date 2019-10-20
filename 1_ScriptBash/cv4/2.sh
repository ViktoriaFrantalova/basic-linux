# Napište skript, který se uživatele postupně zeptá na dvě čísla. Po jejich zadání vypíše jejich součin.

#!/bin/bash

echo -n "zadaj 2 cisla: "
read cislo1 cislo2

vysledok=`expr $cislo1 \* $cislo2`

printf "Sucin tvojich cisel je: %.d "$vysledok