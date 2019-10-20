# Napište skript, který vypočítá průměrnou hodnotu čísel uvedených v druhém sloupci souboru matice.txt.

#!/usr/bin/awk -f 

BEGIN {
    sum = 0
    pocet = 0
    priemer = 0
} 
{
     sum = sum + $2;
     pocet = pocet + 1;
     priemer = sum/pocet;
}
END {
    printf "premier:%8.4f", priemer;
}