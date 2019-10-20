# Vytvořte skript, který vytvoří 360 obrázků o rozměrech 800x600 zobrazující průběh funkce sin(x+offset), pro x v intervalu 0 – 2 p, kde konstanta offset se bude měnit mezi obrázky postupně od 1 do 360˚.

#!/bin/bash

for ((i=0;i<360;i++))
  do
  f=$i*3.14/180
  name=`printf "%03d" $i`

  gnuplot << EOF
  set term png
  set output "$name.png"
  set xrange [0:10]
  plot sin(x+$f)
  EOF
done
