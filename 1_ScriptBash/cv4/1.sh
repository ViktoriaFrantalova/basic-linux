# Napište skript, který načte ze standardního vstupu číslo a to vypíše následujícím způsobem: bude uvedeno znaménko, pro výpis se použije pět míst, prázdné místa budou vyplněny nulami: 

# Zadane cislo je : 3

#!/bin/bash

moje_cislo=3

printf "Moje formatovane cislo je %+05.f" $moje_cislo
# Moje formatovane cislo je +0003