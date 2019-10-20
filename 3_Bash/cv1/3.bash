# Napište skript, který se dotáže na celé číslo. Skript pak otestuje, zda li se skutečně jedná o celé číslo.

#!/bin/bash

echo -n "Zadaj hodnotu A: " 
read A 
if [ $A -eq $A 2>/dev/null ]; then
  echo "$A je cele cislo"
  exit 0
else 
  echo "$A nie je cele cislo"
  exit 1
fi
