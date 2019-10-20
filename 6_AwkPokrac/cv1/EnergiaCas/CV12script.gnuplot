#!/usr/bin/gnuplot 

plot "trans.txt" u 4:1 with lines title "Etot",
 "trans.txt" u 4:2 with lines title "EKtot",
  "trans.txt" u 4:3 with lines title "EPtot",
   "trans.txt" u 4:5 with points linecolor rgb "yellow" linewidth 6 title "Etot1"


pause -1


