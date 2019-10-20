# Napište skript, který vytiskne největší a nejmenší hodnotu ze třetího sloupce souboru matice.txt.

#!/usr/bin/awk -f 
{ 
if (NR == 1) {
	max = $3
	min = $3
}
if ( max < $3 ) {
      max = $3 
}
if ( min > $3 ) {
      min = $3 
}
}
END {
    printf "najmensia hodnota je:%8.4f\n", min;
    printf "najvacsia hodnota je:%8.4f\n", max;
}
