// Napište skript, který vytiskne druhý a čtvrtý sloupec ze souboru matice.txt.

#!/usr/bin/awk -f 
 {
   print $2 " " $4
}