# Napište skript, který sečte čísla v druhém sloupci souboru matice.txt.

#!/usr/bin/awk -f 
BEGIN {
    sum = 0
    A = 0
} 
{
    sum = sum + 1
     A = A + $2
}
END {
    print "suma je =", A;
}