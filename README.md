# Basic-Linux

## Praca v 
[online manualove stranky vo formate HTML](https://linux.die.net/man/)

ZAKLADNE PRIKAZY
- `cd` změní aktuální pracovní adresář
- `pwd` vypíše cestu k aktuálnímu pracovnímu adresáři
- `ls` vypíše obsah adresáře (ls -l)
- `mkdir` vytvoří adresář
- `rmdir` smaže adresář (musí být prázdný)
- `cp` zkopíruje soubor či adresář
- `mv` přesune soubor či adresář
- `rm` odstraní soubor či adresář
- `find` vyhledává soubory či adreáře

PRIKAZY
- `man` manuálové stránky příkazů
- `whatis` vypíše krátký popisek příkazu (z manuálové stránky)
- `apropos` hledá příkazy obsahující v popisku v manuálu zadané klíčové slovo
- `info` zobrazení info stránek příkazů (obdoba manuálových stránek)
- `whoami` vypíše jméno přihlášeného uživatele
- `hostname` vypíše jméno stroje, na kterém jste přihlášeni
- `w` vypíše, kdo je na stroj přihlášen a co dělá
- `who` vypíše , kdo je na stroj přihlášen
- `ps` vypíše procesy běžící v daném terminálu nebo podle zadaných specifikaci (ps u user_ name)
- `pstree` vypíše procesy (stromový výpis)
- `top` průběžně zobrazuje procesy setříděné podle zátěže proces (ukončení klávesou q)
- `ssh` příkaz pro zabezpečené přihlášení na vzdálený stroj
- `cat` spojí obsah více souborů do jednoho (za sebe), případně vypíše obsah jednoho souboru
- `paste` spojí obsah více souborů do jednoho (vedle sebe)
- `wc` informace o souboru (počet řádků, slov a znaků)
- `head` vypíše úvodní část souboru
- `tail` vypíše koncovou část souboru
- `gimp` procesy běžící na popředí blokují terminál,protože používají jeho standardní vstup a výstup
- `gimp &` procesy běžící na pozadí neblokují terminál
- `Ctrl+Z` pozastaví běh procesu, další osud procesu lze kontrolovat pomoci příkazů:
  - `jobs` vypíše procesy, které shell spravuje
  - `bg` přesune proces do pozadí
  - `fg` přesune proces do popředí
  - `disown` zruší vazbu procesu na shell (proces není ukončen při ukončení shellu
- `sleep` spustí proces, který čeká po zadanou dobu
- `time` vypíše délku běhu procesu
- `stat` vypíše podrobné informace o souboru či adresáři


PRISTUPOVE PRAVA
- `id` vypíše identifikační údaje přihlášeného uživatele a jeho zařazení do skupin
- `getent` vypisuje informace o uživatelích, skupinách uživatelů a další informace
- `chmod` změní přístupová práva k souboru či adresáři
- `chown` změní vlastníka souboru či adresáře
- `chgrp` změní přístupovou skupinu souboru či adresáře
- `umask` výchozí přístupová práva pro nově vytvářené soubory či adresáře



VYZDIAlENE PRIHLASOVANIE
- Syntax:
  ```
  $ ssh [user@] hostname [command]
  ```
- odhlasenie: `exit`

MANUALOVA STRANKA (ak si neviem dat rady)
```
$ man [section_number] topic
```
  - [-] znaci volitelne volby alebo argumenty
  - <-> ynaci povinne volby alebo argumenty, popripade bey zatvoriek

VYTVORENIE ADRESARU
```
mkdir meno_adresaru
```
VYTVORENIE VNORENEHO ADRESARU
  ```
  $ mkdir -p meno_adr1/meno_adr2/meno_adr3
  ```

KOPIROVANIE
- SYNTAX prikazu `cp` a podobne aj sa `mv`:
  - vytvoří kopii souboru "soubor1" s názvem "soubor2"
  ```
  - $ cp soubor1 soubor2
  ```
  - kopíruje soubory "soubor1 ", "soubor2", "soubor3" do adresáře "adresar1"
  ```
  - $ cp soubor1 soubor2 soubor3 adresar1/
  ```
  - vytvoří kopii adresáře "adresar 1 s názvem "adresar 2 pokud adresář "adresar 2 již existuje, vytvoří kopii adresáře "adresar 1 jako podadresář adresáře "adresar 2
  ```
  - $ cp -r adresar1 adresar2
  ```
  - kopíruje soubory "soubor1", "soubor3" a adresář "adresar2" do adresáře
  ```
  $ cp -r soubor1 adresar2 soubor3 adresar1/
  ```
- pre vzdialene kopirovanie prikaz `scp`:
  ```
  - $ scp [-r] zdroj cil
  ```
STAHOVANIE SUBORU Z WEBU
- k stahovaniu suboru pouzijeme prikaz `wget`
  ```
  - $ wget [-O output_name] url
  ```

MAZANIE
- prikaz `rm`:
  - odstrani subor1
  ```
  - $ rm subor1
  ```
  - odstrani adresar1
  ```
  - $ rm -r adresar1
  ```

HLADANIE
- prikaz `find`:
   - v adresáři /home/ nalezne všechny soubory, které mají zakončení .txt
  ```
  - $ find /home/ name '*.txt
  ```

  - v adresáři /home/viktori nalezne všechny soubory, které mají zakončení . txt nebo . hpp
  ```
  - $ find ~viktori name '*.txt' or name '*.hpp'
  ```

  - v aktuálním adresáři nalezne všechny podadresáře, jejichž jména začínají písmenem D
  ``` 
  - $ find name 'D*' and type d
  ```

PRISTUPOVE PRAVA, ZMENY
- `r` - možnost číst soubor, vypsat obsah adresáře
- `w` - možnost měnit soubor, změnit obsah adresáře (vytvořit či smazat soubor či adresář)
- `x` - možnost spuštění souboru, možnost vstoupit do adresáře

- menit prava suboru ci adresaru mo6e menit iba vlastnik pomocou prikazu `chmod`
  ```
  - $ chmod permissions file1 [file2 ...]
  ```

- Skupina prav:
  - `u` vlastník (user)
  - `g` skupina uživatelů (group)
  - `o` ostatní (other)
  - `a` všichni (all) právo se aplikuje na u,g,o

```
 - $ chmod u+x,g w soubor
```
- Přidá (+) právo pro spuštění vlastníkovi
- Odstraní (-) právo zápisu pro skupinu

PRIKAZ `kill`
- `Ctrl+C` běžícímu procesu zašle signál SIGINT ( Interrupt ), proces je ve většině případů násilně ukončen

```
- $ kill [-signal] PID
```
- Specifikacia signalu: -N (číslo signálu), -NAME (jméno signálu), -SIGNAME (SIG+jméno signálu)
- Uzitocne signalu: 
  - `TERM 15` - žádost o ukončení (proces na signál může reagovat)
  - `INT 2` - žádost o přerušení (ekvivalent Ctrl+C ) (proces na signál může
  - `KILL 9` - ukončení **(proces nemůže signál ignorovat, je násilně ukončen)**
  - `STOP` - pozastaví proces (proces nemůže signál ignorovat) (ekvivalent Ctrl+Z)
  - `CONT` - obnoví běh pozastaveného procesu (proces nemůže signál ignorovat)

## PROGRAMI vs SKRIPTY
- `PROGRAM` - subor strojovych instrukcii spracovanych priamo precesorom, vznika prekladom zdrojoveho kodu programovacieho jazyka
- `SKRIPTY `- je textovy subor obs. prikazy a riadiace sekvencie, ktore su vykonavane interpretom pouzivaneho skriptovacieho jazyka
  - skriptovacie jazyky:
    - **bash**
    - **gnuplot**
    - **awk**
    - JavaScript
    - PHP
    - python

## BASH
- unixovy shell (prikazovy procesor) je nazov textoveho uzivatelskeho rozhrania
- SPUSTENIE:
  - nepriame
  ```
  -  $ bash muj _skript_ bashi
  ```
  - priame
  ```
  - $ chmod u+x muj _skript_ bashi
  - $ muj _skript_ bashi
  ```
- !!! POZOR v bashi musi byt interpreter skriptu: `#!/bin bash`
- !!! POZOR v gnuplote musi byt interpreter skriptu: `#!/usr/bin/gnuplot`

## SKRIPROVANIE V BASHI
PREMENNE
- rozumieme pomenovane umiestnenie v pamati, kt. obs. hodnotu.
- !!! hodnota premennej v jazyku Bash je vzdy typu **retazec(text)**.

NASTAVENIE PREMENNej
- nesmie byt medzera medzi menom premennej a `=` 
```
- $ JMENO_PROMENNE=hodnota
- $ JMENO_PROMENNE="hodnota s mezerami"
```
- pristup k hodnote
```
- $ echo JMENO_PROMENNE
```
- zrusenie premennej
```
- $ unset JMENO_PROMENNE
```
- prehlad vsetkych def. premennych
```
- $ set
```

RETAZCE
- vieme pouzit 4 typy retazcov: 
  - bez uvodzoviek
  ```bash
  A=pokus
  B=*
  C=$A
  ```
  - s uvodzovkami
  ```bash
  A="pokus hokus"
  B="* $A"
  ```
  - s jednoduchymi uvodzovkami(apostrof)
  ```bash
  A='pokus hokus'
  B='* $A'
  ```
  - s obratenymi jednoduchymi uvodzovkami(obrateny apostrof)
  ```bash
  A="`ls -d`"
  B="pocet : `ls | wc -l`"

VSTUPY a VYSTUPY
- prikaz `read` - sluzi k cistaniu textu zo standartneho vstupu
  ```bash
  echo -n "Zadej hodnotu: "
  read A
  echo "Zadana hodnota je : $A"
  ```
ARGUMENTY SKRIPTU
- pouzitie a vyznam argumentu si urcuje autor skriptu
```
- $ bash muj _skript_ bashi arg1 arg2 arg3
- $ muj _skript_ bashi arg1 arg2 arg3
```

```bash
#!/bin/bash
echo "Pocet zadanych argumentu: $#" # 3
echo "Prvni argument je: $1" # arg1
echo "Druhy argument je: $2" # arg2
echo "Vsechny zadane argumenty jsou: $*" # vsetky arg
echo "Nazev spusteneho skriptu: $0" # ./muj _skript_ bashi
```
- prikaz `echo` 
  - sluzi k neformatovemu vystupu do standartneho vystupneho prudu
  - `echo -n` neodriadkuje vystup
- Syntaxe:
  ```bash
  echo [volby] [retezec1] [retezec2] ...
  ```

- prikaz `printf` sluzi k vypisovaniu formatovanych textov a cisel
- Syntaxe:
  ```bash
  printf [format] [hodnota1] [hodnota2] ...
  ```
- format:`%[priznak][delka][.presnost]typ`
- presnost = pocet miest za desatinou ciarkou
- delka = celkova dlzka pola
- priznak:
  - `-` - zarovnat dolava
  - `0` - prazdne miesto zaplnit nulami
  - `+` - vzdy uviest znamienko
- typ:
  - `d` - cele cislo
  - `s` - retazec(text)
  - `f` - realne cislo
- specialne znaky:
  - `\n` - koniec riadku
  - `\r` - vrat sa na zaciatok riadku
  - `%%` - znak %

ARITMETICKE OPERACIE
- tieto operacie mozno vykonat v celymi cislami v bloku `((...))`
- Mozne zapisi:
  ```bash
  (( I = I + 1 ))
  (( I++ ))
  I=$(( I + 1 ))
  echo "Hodnota I zvetsena o jedna : $(( I + 1 ))"
  ```
- Operatory:
  - `=` - priradenie
  - `+` - scitanie
  - `-` - odcitanie
  - `*` - nasobenie
  - `/` - delenie
  - `%` - zbytok po deleni
  - `++` - inkrementacia (zvysenie hodnoty o 1)
  - `--` - dekrementacia (znizenie hodnoty o 1)

- prikaz `expr` vzhodnocuje matematicke vyrazy
- `\` zabranuju expanzii specialneho znaku `*`
```
- $ expr 1 + 2
# 3

- $ expr 2 \* 3
# 6
```
## RIADACIE STRUKTURY (PODMIENKY, CYKLY)
PODMIENKY
- pokial prikaz1 skonci s navratovou hodnotou 0, vykona sa prikaz2. V opacnom pripade sa vykona prikaz3.
```bash
if prikaz1
  then
    prikaz2
    ...
  fi
# --------------------------------
if prikaz1
  then
    prikaz2
    ...
  else
    prikaz3
    ...
  fi
# --------------------------------
if prikaz1: then
  prikaz2
  ...
else
  prikaz3
  ...
fi
```
NAVRATOVA HODNOTA
- 0 = vsetkoprebehlo USPESNE(pravda)
- > 0 = doslo k chybe(nepravda)
- tato hodnota posledneho prevedeneho prikazu vieme zistit pomocou premennej `?`
```bash
- $ expr 4 + 1
# 5
- $ echo $?
# 0

- $ expr a + 1
# expr: non-integer argument
$ echo $?
# 1
```
OPERATORY POROVNAVANIA
- prikaz `test` sluzi k porovnavaniu hodnot a testovaniu typu suboru a adresaru(man bash, man test)
```bash
test cislo1 operator cislo2
#--------------------------
[[ cislo1 operator cislo2 ]] # musia byt medzery
```
Operatory:
  - `-eq` rovna sa (equal)
  - `-ne` nerovna sa (not equal)
  - `-lt` menisie nez (less than)
  - `-gt` vecsie nez (greater than)
  - `-le` mensie nez alebo rovne (less or equal)
  - `-ge` vacsie nez alebo rovne (greater or equal)
- logicke operatory:
  - `||` logicke alebo
  - `&&` logicke ano
  - `!` negacia
- retazcove operatory:
  - `-n` testuje ci retazec nema nulovu dlzku
  - `-z` testuje ci retazec ma nulovu dlzku
  - `-f` testuje ci nazov retazca existuje v subore
  - `-d` testuje ci nazov retazca existuje v adresare

```bash
[[ (cislo1 operator cislo2) || (cislo3 operator cislo4) ]]

[[ (I -lt 5) || (I -gt 10) ]] nebo [[ !((I -ge 5)&&(I -le 10)) ]] # Je hodnota proměnné I mimo interval <5;10>?

[[ -f "$NAME" ]] # existuje subor, jeho meno v premennej NAME?
```

LENIVE VYHODNOCOVANIE
- `[[ vyraz1 || vyraz2 ]]` a nie `[[ vyraz1 ]] || [[ vyraz2 ]]`
- pokial je prvy vyraz pravda, tak je vzsledok vzdy pravda. Preto sa vyraz vyhodnocuje iba ak prvy vyraz nie je pravda.
!!! **TRIK** - pokial prikaz `mkdir` bude neuspesny zavola sa prikaz `exit` a skript sa ukonci
```bash
mkdir adre sar || exit 1
```
- `[[ vyraz1 && vyraz2 ]]` a nie `[[ vyraz1 ]] && [[ vyraz2 ]]`
- pokial je prvy vyraz nepravda, tak je vysledok vzdy nepravda. Preto sa vyraz2 vyhodnocuje len ak prvy vyraz je pravda
```bash
mkdir adresar 2> /dev/null
if test $? -ne 0; then
    echo "Nemohu vytvorit adresar!"
    exit 1
fi
```

## CYKLUS `while/until`
- cyklus prebieha zatial co prikaz1 vracia v navratovej hodnote 0(bez chyby)
```bash
while prikaz 1
    do
        prikaz2
        ...
    done
#--------------------------
while prikaz1; do
    prikaz2
    ...
done
```
- cyklus prebieha dokial prikaz1 nevrati v navratovej hodnote 0
```bash
until prikaz1; do
    prikaz2
    ...
done
```
- cyklus `while`
```bash
N=10
I=0
while test "$I" -lt "$N"; do
    echo "X"
    ((I = I + 1))
done
#---------------------------
N=10
I=0
while [[ I -lt N ]] ; do # alebo aj [[ "$I" -lt "$N" ]]
    echo "X"
    ((I = I + 1))
done
```
- prikaz `exit` sluzi k ukonceniu behu skriptu, nepovinna navratova hodnota
```bash
#!/bin/bash
if test "$1" -lt 0; then
    echo "Cislo je mensie nez nula!"
    exit 1
fi
echo "Cislo je vacsie alebo rovne nule."
exit 0
```
- vnorovanie cylov:
```bash
N=10
I=0
while [[I -lt $N ]]; do
    J=0
    while [[ J -l I]]; do
        echo -n "X"
        ((J = J + 1))
    done
    echo ""
    ((I = I + 1))
done
```
## CYKLUS `for`
- cyklus `for` je riadiaca struktura, ktora opakovane prevadza postupnost prikazov
- opakovanie i ukoncenie cyklu je riadene podmienkou
```bash
for ((inicializace;podminka;zmena))
    do
        prikaz1
        ...
    done
# --------------------------
for ((inicializace;podminka;zmena)); do
    prikaz1
    ...
done
```
- Vypíše čísla 1 až 10
```bash
for ((I=1; I <= 10; I++)); do
    echo $I
done
```
- premenna `I` ma rolu pocitadla
- Inicializacia sa riadi volnymi pravidlami, kedze je vyraz uvedeny v `(( ))` bloku
- Zmena:
  - `++` hodnotu premennej zvysi o 1
  - `--` hodnotu premennej znizi o 1
- Podmienky:
  - `!=` nerovná se
  - `==` rovná se
  - `<` menší
  - `<=` menší nebo rovno
  - `>` větší
  - `>=` větší nebo rovno

- cyklus `for... in...` 
- prikaz v bloku do/done sa vykonaju pre kazdy orvok v zozname `LIST`, v danom behu cyklu obsahuje premenna `VAR` aktualny prvok zo zozname `LIST`
```bash
for VAR in LIST
    do
        prikaz1 $VAR
        ...
    done
# --------------------------
for VAR in LIST; do
        prikaz1 $VAR
        ...
done
```
- Seznamy položek je vhodné vytvářet programově (pomocí příkazů uvedených v obrácených apostrofech).
```bash
for A in `ls *.eps `; do
    ./process_file $A
done
```
- příkaz `process file` se vykoná pro každý soubor s příponou eps , který se nachází v aktuálním adresáři.

```bash
for A in `seq 1 0.25 10`; do
    printf "%8.3f\n" $A
done
```
- Vypíše reálná čísla v intervalu od 1 do 10 s přírůstkem 0,25. Čísla budou uvedeny s přesností tří desetinných míst a zarovnány doprava v poli o délce 8 znaků.

## PRESMEROVANIE `<` A ROURY `|`
- citanie suboru po riadkoch
```bash
cat soubor.txt | while read A; do
    prikaz2
    ...
done
# --------------------------
while read A; do
    prikaz2
    ...
done < soubor.txt
```
- PRESMEROVANIE DO SUBORU
  - vystup vsetkych prikazov v cykle je presmerovany do `soubor.txt`
```bash
for ((I=1;I <= 10;I++)))); do
    echo $I
done > soubor.txt
```

- PRESMEROVANIE VSTUPU ZO SKRIPTU
- presmenerovanie standartneho vstupu programu `my_command` zo suboru skriptu
- `EOF` - znacka urcujuca koniec vstupu
- koniec vstupu, znacku nesmu obklopovat medzery
```bash
..........
./my_command << EOF
prvni radka textu
druha radka textu
treti radka textu
EOF
..........
```
- napriklad:
```bash
#!/bin/bash

for ((I=1;$I<=10;I++)); do
      NAME=`printf "%02d.txt" $I`
      cat << EOF > $NAME
Toto je soubor cislo: $I
EOF
done
```

## FUNKCIA
- je konstrukia, ktora umoynuje zoskupit cast kodu tak, aby bolo mozne lahko pouzit na viac miestnych skript
- funkcie teda usnadnuje a sprehliadnuje zapis opakovanych ukonov
```bash
function jmeno
    prikaz1
    prikaz2
    ...
}
#-------------------------
function jmeno {
    prikaz1
    prikaz2
    ...
}
#--------------------------
jmeno () {
      prikaz1
      prikaz2
      ...
}
```
- Premenne vo funkcii su globalne

## GNUPLOT
`Gnuplot` sluzi k vykreslovani 2D a 3D grafu umoznujuci pracu v interaktivnom tak i skriptovemu rezimu
- Nepriame spustenie:
  ```
  - $ gnuplot muj _skript_ gnuplotu
  ```
- Priame spustenie:
```
- $ chmod u+x muj _skript_ gnuplotu
- $ muj _skript_ gnuplotu
```
- prikaz `plot` - zobrazi XY graf funkcie alebo datove rady obsahujuce v subore
```gnuplot
plot funkce/soubor [nastaveni_zobrazeni] [, fce/soubor...]
```
- zobrazi sinusoidu
```gnuplot
plot sin(x)
```
- zobrazi cosinusoidu v bodoch cervenej farby a sirka ciary = 2 a legendov "cos"
```gnuplot
plot cos (5.7*x+3.4) with points linecolor rgb "red", linewidth 2 title "cos"
```
- nazov suboru s datmi, 1 = pry stlpec x-ove hodnoty
```gnuplot
plot "input.txt" using 1:2 with lines
```
- zobrazi funkciu sin a cos do jedneho grafu
```gnuplot
plot sin(x), cos(x)
```

- prikaz `splot` sluzi k zobrazeni funkcie dvoch premennych.
- zobrazi XYZ garf funkcie alebo datove rady obsiahnute v subore
```gnuplot
splot funkce/soubor [nastaveni_zobrazeni] [, fce/soubor ...]
```
- pre zvyraynenie plochy pomocou funkcnej hodnoty vieme pouzit `pm3d` zobrazenie
```gnuplot
spolt x*x+y*y with pm3d
```

DALSIE PRIKAZY:
  - zahlavie grafu
  ```gnuplot
  set title "popis"
  ```
  - nastavi rozsah x-ovej osy
  ```gnuplot
  set xrange min_ value max value
  ```
  - nastavi popis x-ovej osy
  ```gnuplot
  set xlabel "popis"
  ```
  - nastavi rozsah y-ovej osy
  ```gnuplot
  set yrange min_ value max value
  ```
  - nastavi popis y-ovej osy
  ```gnuplot
  set ylabel "popis"
  ```
  - nezobrazi legendu k datovym radam
  ```gnuplot
  set nokey
  ```
  - caka na stisknutie klavesy
  ```gnuplot
  pause -1
  ```
# Terminal
- urcuje kam bude graf vykresleny
- vystup je vykresleny do okna
```gnuplot
set term x11
```
- vystup je vykresleny do okna(lepsie vlastnosti)
```gnuplot
set term qt
```
- vystup je vykresleny ako obrazok vo formate png
```gnuplot
set term png size 800, 600
```
- vystup bude ulozeny do suboru "output.png"
```gnuplot
set output "output.png"
```
- vytiskne stranku demonstrujucu vlastnosti terminalu
```gnuplot
test
```
## AWK
- je to skriptovaci jazyk navrhnuty pre spracovanie textovych dat, ci v podobe textovych suboru alebo prudu
- jazyk vyuzivaretazcove datove typy, asociativne pole a regularne vyrazy

STRUKTURA SKRIPTU `AWK`
```AWK
BEGIN { # vykona sa pred spracovanim suboru(volitelna sekcia)
}
{
  # vykona sa pre kazdy zaznam
}
/VZOR/ {
  # vykona sa pre kazdy zaznam vyhovujuci VZORu
}
END {
  # vykona sa po spracovani suboru(volitelna sekcia)
}
```
- napriklad:
  - vstup.text
  ```text
  54.7332 295.7275 128.4090 -508.1302 -155.6037 0.0000
  51.3204 292.3619 176.5980 -494.7423 -164.7991 0.1822
  40.6154 273.9238 164.5827 -488.9232 -163.0629 0.3793
  52.5044 281.5944 153.4570 -484.6533 -168.5328 0.3528
  62.5486 294.2701 155.3607 -483.6872 -169.1747 0.0033
  ```

  - script.awk
  ```awk
  {
    print $2;
  }
  ```
```
- $ awk –f script.awk vstup.txt
#--------------------------------
- $ awk '{print$2; }' vstup.txt
```
- vystup
```text
295.7275
292.3619
273.9238
281.5944
294.2701
```
PREMENNE
- rozdiel medzi `awk` a `bashom` je ze `awk` moze obsahovat medzery
```awk
A = 10;
B = "toto je text" 
C = 10.4567;
D = A + C;
```
-hodnota premennej:
```awk
print A + C;
print B;
```
- specialne premenne:
  - `NF` pocet poli v aktualne prevedenom zaznamu (Number of Fields)
  - `NR` poradie prevedeneho zaznamu (Number of Records)
  - `FS` oddelovac poli v zazname (Field Separator), vychodzia je medzera a tabulator
  - `RS` oddelovac zaznamu (Record Separator), vychodzi je znak noveho riadku `\n` 
  - `$0` cely zaznam
  - `$1`, `$2`, `$3 ...` jednotlive polia zaznamu

SPUSTESNIE AWK SKRIPTU
- nepriame spustenie:
```
- $ awk -f script.awk vstup.txt
```
- priame spustenie:
```
- $ ./script.awk vstup.txt
- $ ./script.awk < vstup.txt
- $ cat soubor.txt | ./script.awk
```
- script.awk
```awk
#!/usr/bin/awk –f
{
  i += NF;
}
END {
  print "Pocet slov je:", i;
}
```
- prikaz `print` sluzi k neformatovanemu vypisovaniu retazca a cisel
- pokial su hodnoty oddelene ciarkou, vo vzstupe sa hodnoty oddelia medzeorou
```awk
print hodnoa[,] hdonota2[,]...;
```

- funkcia `printf` sluzi k vypisovaniu formatovanych textov a cisel
```AWK
printf("format", hodnota1, hodnota2, ...);
```

!!! ROZDIEL S BASHOM
- `printf` je prikay a argumentz prikazu sa oddeluju medzerou

PODMIENKY
- pokial je logicky vyraz pravda vykona sa prikaz2, v opaconom pripade sa vykona prikaz3
```AWK
if( logicky_vyraz ) {
  prikaz2;
  ...
} else {
  prikaz3;
  ...
}
```
- logicke operatory rovnako ako v Bashi
  
CYKLY
```AWK
for(inicializace; podminka; zmena) {
  prikaz1;
  ...
}
```
- !!! rozdiel voci BASHU
```bash
for((inicializace;podminka;zmena)); do
    prikaz1
done
```

POLE
- `Awk` pouziva asociativne pole, pole ma nazov, k prvkom pole sa pristupuje pomocou kluca
- kluc moze mat lubovolnu hodnotu a typ
- klucom moze byt hodnota premennej
```Awk
i = 5;
moje_pole[i] = 15;
print moje_pole[i];

a = "slovo";
moje_pole[a] = "hodnota";
print moje_pole["slovo"], moje_pole[5];
```
- prechadzanie zoznamu klucu - vykona telo cyklu pre kazdy kluc, kt. bol pouzity pre ulozenie hodnoty do pola, hodnota kluca je ulozen do premennej
```Awk
for( premenna in pole ) {
  print pole[premmena];
  ...
}
```
- mazanie zaznamu s klucom
```awk
delete pole[kluc];
```
## KOMPRESE
- komprimacia je postup, kt. dochadza k znizenie velkosti dat (suboru)
- docieluje sa toho vyhledavnim `redundantnich` alebo `nepodstatnych` informacii v datach, kt. su potom ukladane efektivnejsie
- podla typu kompresneho algoritmu, vieme kompresiu dat rozdelit do dvoch zakladnych kategorii:
  - `stratova kompresia` - dochadza k nevratnej strate niektorych nepodstatnych informaciu, co je vacsinou tolerovane pri kompresii obrazovych ci zvukovych dat
    - mplayer
    - mencoder
    - convert(image Magick)
  ```
  - $ convert input.png -quality number output.jpeg
  ```
    - `-quality` miera kvality vysledneho obrazu od 1 (nejhorší kvalita s největší kompresí) po 100(nejlepší kvalita s nejhorší kompresí)

  - `bezstratova kompresia` - nedochadza k ziadnej strate povodnych informacii, komprimovane data vieme obnovit do povodneho stavu, miera kompresie je niekolkonasobne nizsie nez u stratovej kompresie
    - gzip/gunzip
    - bzip2/bunzip2
    - zip/unzip
  ```
  - $ gzip subor.txt # vznikne subor.txt.gz
  ```
- obnoveniu komprimovanych dat = `dekompresia` 
```
- $ gunzip subor.txt.gz
```
- `Kompresny pomer` udava kvalitu komprese a udava sa ako pomer velkosti povodnzychdat ku velkosti komprimovanych dat

- Kompresi či dekompresi lze uskutečnit tak, že výsledek je posílán do standardního výstupu
(originální soubor pak zůstává nezměněn), např.:
```
- $ bunzip2 --stdout soubor.txt.bz2 | wc
```
## ARCHIVY `tar`
- `tar` je souhrnný název jednak pro souborový formát sloužící k uložení mnoha jednotlivých souborů, jednak pro jednoúčelové programy, které s tímto formátem pracují. 
- formát samotný vznikl v počátcích Unixu a až později byl standardizován v rámci normy POSIX 
- původně pomáhal při archivaci souborů na páskových jednotkách, ale později se jeho užívání rozšířilo a dnes je používán zkrátka tam, kde je vhodné pro účely distribuce či archivace sloučit více souborů do jednoho tak, aby se zachovaly informace o adresářové struktuře, přístupových právech a dalších atributech, které běžně souborový systém obsahuje.

- rozbalenie archivu
```
- $ tar xvf archiv.tar
```
- vytvorenie archivu
```
- $ tar cvf archiv.tar adresar/

- $ cd adresar
- $ tar cvf /cesta/k/archiv.tar *
```
- pokud jméno archivu obsahuje zakončení `.gz` nebo `.bz2` tak je archiv automaticky dekomprimován nebo komprimován

