# LaTeX-mall

[![Build Status](https://travis-ci.org/JonasOlson/latex-mall.svg?branch=master)](https://travis-ci.org/JonasOlson/latex-mall)

En minnesanteckning om hur man gör saker i LaTeX på de modernaste, snyggaste och mest kapabla sätten.

## Behövliga paket

I Ubuntu 20.04 fås allt man behöver genom `sudo apt install texlive-full python-is-python3 inkscape`.

Somliga system har en alltför gammal version av LaTeX-paketet `minted` (minst version 2.0 krävs). Detta avhjälps genom att man kör `make minted`, vilket laddar ner en lämplig version lokalt för just detta dokument.

## Körinstruktion

    make

## Bakgrund till några av de val som gjorts

### Byggkommando

Vald metod: `latexmk`

Närmaste kända ekvivalent är `rubber`, men `latexmk` tycks ha minst lika bra funktionalitet och vara minst lika aktivt utvecklat. Alternativet `arara` verkar vara inriktat på att manuellt ställa in kompileringsregler för enskilda filer, vilket vi inte har användning för här.

### LaTeX-motor

Vald metod: `lualatex`

Både `lualatex` och `xelatex` är modernare och snyggare än `pdflatex`. Av dessa verkar `lualatex` vara det som mest har framtiden för sig.

### Documentclass

Vald metod: `memoir`

Denna verkar vara mest kapabel och kunna allt standardklasserna och KOMA-klasserna kan.

### Indexering

Från noll.

### Enheter

Vald metod: `siunitx`

Enligt vad folk skriver är detta paket efterträdare eller på annat sätt överlägset `SIstyle`, `SIunits`, `unitsdef`, `units`, `hepunits`, `fancyunits` och `cjwunits`.

### Kodlistning

Vald metod: `tcolorbox`, som ritar bakgrundsfärgen och anropar `minted`, som färlägger koden med hjälp av det externa programmet `pygmentize`, cachar resultatet och anropar `fancyvrb`, som gör den slutgiltiga typsättningen.

I stället för `tcolorbox` kunde `framed`, `mdframed` eller `boites` ha använts, men `tcolorbox` förefaller vara den mest kompetenta kandidaten.

Det finns även andra paket som färglägger kod:
* `verbments`: Cachar, men verkar inte kunna ta ett filnamn som argument, endast kod direkt i LaTeX-filen. Typsätter med fancyvrb och framed. Det är oklart om den kan göra radbrytningar och om det går att ställa in marginaler som önskat.
* `pygmentex`: Cachar. Ej utvärderat.
* `pythontex`: Cachar. Den kan även kompilera kod och visa resultatet. Möjligt alternativ. Ej utvärderat.

### Inbäddning av filer i PDF:en

Vald metod: `attachfile`

Har problem med filnamn som inte håller sig till ASCII.

Andra möjligheter:
* `attachfile2`: Ska väl vara bättre, men liksom `attachfile` kolliderar den med nollindexeringen och workarounden fungerar bara med `attachfile`.
* `embedfile`: Samma upphovsman som `attachfile2`. Lägger till filer som bilagor till PDF:en, inte som länkar.
* `navigator`: Gör många PDF-relaterade saker, däribland bilagor och möjligen också länkar till inbäddade filer. Kolliderar med `tcolorbox`.

### Typsnitt

Vald metod: `fontspec`

Både `inputenc` och `fontenc` hör till en äldre metod.

### Språk

Vald metod: `polyglossia`

Ersätter `babel`.
