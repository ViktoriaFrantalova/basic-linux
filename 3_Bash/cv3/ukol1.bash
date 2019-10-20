# Upravte skripty z předchozího cvičení, tak aby se rozměr obrazce načítal ze standardního vstupu a výsledný obrazec se tisknul do souboru, jehož jméno zadá uživatel opět ze standardního vstupu.

#!/bin/bash

echo -n "Zadaj cele cislo, ktore reprezentuje velkost stvorca: " 
read size
echo -n "Zadaj nazov filu do ktoreho sa ulozi vysledny obrazok: " 
read file_name

if [ -z $size ]; then
    echo "Zadajte jeden parameter"
    exit 1
else 
    if [ $size -eq $size 2>/dev/null ]; then
        if [[ $size != 0 ]]; then
            for (( i = 0; i < $size; i++ )); do
                for (( j = 0; j < $size; j++ )); do
                    printf "X"
                done
                printf "\n"
            done > $file_name.txt
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


