# Napište skript, který vypíše reálná čísla v intervalu od 10 do 10 s přírůstkem 0,5. Čísla budou uvedena včetně znaménka zarovnány doprava v poli 10 znaků a uvedeny s přesností na jedno desetinné místo.

#!/bin/bash

for A in `seq -10 0.5 10`; do
    printf "%10.1f\n" $A
done 

