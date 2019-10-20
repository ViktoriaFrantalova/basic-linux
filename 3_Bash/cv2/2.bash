#!/bin/bash

echo -n "Zadaj cele dve cisla, ktore reprezentuje sirku a visku stvorca: " 
read sirka vyska

if [ -z $sirka ] || [ -z $vyska ]; then
    echo "Zadajte dva parameter"
    exit 1
else 
    if [ $sirka -eq $sirka 2>/dev/null ] || [ $vyska -eq $vyska 2>/dev/null]; then
        if [ $sirka -ne 0 ] || [ $vyska -ne 0 ]; then
            for (( i = 0; i < $sirka; i++)); do
                for (( j = 0; j < $vyska; j++ )); do
                    printf "X"
                done
                printf "\n"
            done
            exit 0
        else
            echo "Zadaj vacsie cisla ako je 0"
            exit 1
        fi
    else 
        echo "Zadajte cele, kladne cisla"
        exit 1
    fi
fi


