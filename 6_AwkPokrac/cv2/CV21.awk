# Ze souboru rst.out vyextrahujte průběh teploty v čase. Výsledný soubor nebude obsahovat dvě poslední hodnoty, které jsou průměrnou hodnotou a její fluktuací. Průběh zobrazte v gnuplotu.

#!/usr/bin/awk -f 
 
BEGIN {
    N = 0
} 
 /TIME/ {
 time[N] = $6
 temp[N] = $9
 N = N+1
}
END {
   for (I=0; I<N-2; I++ ) {
    		print I, time[I], temp[I]; 
	} 
}
