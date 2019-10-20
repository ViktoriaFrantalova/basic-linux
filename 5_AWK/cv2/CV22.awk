# Napište skript, který vytiskne počet řádků, které obsahuje soubor matice.txt. Výsledek ověřte pomocí příkazu wc.

#!/usr/bin/awk -f 
BEGIN {
    sum = 0
} 
{
    sum = sum + 1 
}
END {
    print "suma je =", sum;
}