# Napište skript, který vytiskne počet slov, které obsahuje soubor matice.txt.
# Výsledek ověřte pomocí příkazu wc.

#!/usr/bin/awk -f 

BEGIN {
   i 
} 
{
   i += NF;
}
END {
   print "Pocet slov je:" , i;
}