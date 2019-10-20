// Napište skript, který znázorní průběh funkce y=5x3 + 6x2 - 7 v rozsahu -10 až 5 pro xovou hodnotu. Skript spusťte přímo s uvedením interpretru v záhlaví skriptu.

#!/usr/bin/gnuplot

set xrange [-10:5]
plot (5*x**3 + 6*x**2 - 7)

pause -1
