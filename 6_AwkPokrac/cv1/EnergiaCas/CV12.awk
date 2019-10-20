# Ze souboru rst.out vyextrahujte průběh celkové energie (Etot), kinetické energie (EKtot) a potenciální energie (EPtot) na čase. Průběh jednotlivých energií zobrazte v gnuplotu. Ověřte, že součet potenciální a kinetické energie se rovná celkové energii.

#!/usr/bin/awk -f 
 
 /TIME/ {

 time= $6

} 
/Etot/{

 print $3, $6, $9, time, $6 + $9

} 
