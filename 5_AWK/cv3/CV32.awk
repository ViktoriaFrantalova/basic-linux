# Napište skript, který vytiskne ze souboru rst.out řádky, které obsahují devět slov.

#!/usr/bin/awk -f 

BEGIN {
   i
   sum 
} 

{   for ( i=1;i <= 10;i++ ) {
        sum += $i;
} 
    
}
END {
    printf "Pocet riadkov obsahujuce 9 slov: %2d", i;
}