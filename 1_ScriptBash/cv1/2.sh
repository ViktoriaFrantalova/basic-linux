# Rozšiřte funkčnost předchozího skriptu tak, aby kromě výše uvedeného vypsal "Obsah adresare je:" následovaný výpisem seznamu souborů a adresářů v dlouhém formátu. Skript spusťte přímo.

#!/bin/bash
printf "Aktualni adresar je: "
pwd
printf "Obsah adresare je: "
ls -l