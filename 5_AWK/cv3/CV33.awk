# Napište skript, který sečte hodnoty všech čísel uvedených v souboru matice.txt.

#!/usr/bin/awk -f 

BEGIN {
    sum = 0
} 
{
     sum = sum + $0
}
END {
    print "suma je =", sum;
}