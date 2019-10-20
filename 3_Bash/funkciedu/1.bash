# Napište jeden skript, který vytiskne čtverec a trojúhelník (podobně jako v úkolu 1 a 2) pro jednu zadanou délku za sebe do terminálu. Ve skriptu identifikujte část, která se opakuje a přepište ji za použití funkce.

#!/usr/bin/env bash

echo "Napis prosim nejake cele cislo?"
	read size

function graph() {
    graphType=$1
    for (( i = 0; i < $size; i++)); do
        for (( j = graphType; j < $size; j++ )); do
            printf "X"
        done
        printf "\n"
    done
}

graph 0
echo ""
graph i