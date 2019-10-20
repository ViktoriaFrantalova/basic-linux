# Ze souboru rst.out vyextrahujte průběh teploty a spočítejte její průměrnou hodnotu. Vypočtenou hodnotu srovnejte s průměrnou hodnotou uvedenou v souboru rst.out. Proč se hodnoty liší?

#!/usr/bin/awk -f 

BEGIN {
    sum = 0
    pocet = 0
} 
    /TEMP/ {

     sum = sum + $9;
     pocet = pocet + 1;
    
}
END {
    printf "premier:%8.4f", sum/pocet;
}
