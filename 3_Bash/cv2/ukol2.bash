# Napište skripty v jazyce bash pro Úkol 1 a 2, místo cyklu pomocí while použijte cyklus pomocí for . Rozměr vykreslovaného obrazce nechť uživatel zadá jako první argument skriptu. Skript otestuje, zda li je zadán správný počet argumentů a zda li je první argument celé číslo větší než nula.

# Do terminálu vytiskněte pravoúhlý trojúhelník se znaků X, tak aby jedna odvěsna byla umístěna nahoře a druhá na levé straně. Délku odvěsny zadá uživatel.

#!/bin/bash

echo -n "Zadaj cele cislo, ktore reprezentuje velkost stvorca: " 
read size

if [ -z $size ]; then
    echo "Zadajte jeden parameter"
    exit 1
else 
    if [ $size -eq $size 2>/dev/null ]; then
        if [[ $size != 0 ]]; then
            for (( i = 0; i < $size; i++ )); do
                for (( j = i; j < $size; j++ )); do
                    printf "X"
                done
                printf "\n"
            done
            exit 0
        else
            echo "Zadaj vacsie cislo ako je 0"
            exit 1
        fi
    else 
        echo "Zadajte cele, kladne cislo"
        exit 1
    fi
fi
