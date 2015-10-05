# LaTeX-mall


## Kompileringskommando


Vald metod: `lualatex`

Både `lualatex` och `xelatex` modernare och snyggare än `pdflatex`. Av dessa verkar `lualatex` vara det som mest har framtiden för sig.

## Documentclass


Vald medot: `memoir`

Denna verkar vara mest kapabel och kunna allt standardklasserna och KOMA-klasserna kan.

## Indexering


Från noll.

## Enheter


Vald metod: `siunitx`

Enligt vad folk skriver är detta paket efterträdare eller på annat sätt överlägset `SIstyle`, `SIunits`, `unitsdef`, `units`, `hepunits`, `fancyunits` och `cjwunits`.

## Kodlistning


Vald metod: `tcolorbox`, som ritar bakgrundsfärgen och anropar `minted`, som färlägger koden med hjälp av det externa programmet `pygmentize`, cachar resultatet och anropar `fancyvrb`, som gör den slutgiltiga typsättningen.

I stället för `tcolorbox` kunde `framed`, `mdframed` eller `boites` ha använts, men `tcolorbox` förefaller vara den mest kompetenta kandidaten. Version 2.0 eller senare av `minted` krävs, vilket kan ordnas lokalt genom att lägga filen `minted.sty` i arbetskatalogen.

Det finns även andra paket som färglägger kod:
* `verbments`: Cachar, men verkar inte kunna ta ett filnamn som argument, endast kod direkt i LaTeX-filen. Typsätter med fancyvrb och framed. Det är oklart om den kan göra radbrytningar och om det går att ställa in marginaler som önskat.
* `pygmentex`: Cachar. Ej utvärderat.
* `pythontex`: Cachar. Den kan även kompilera kod och visa resultatet. Möjligt alternativ. Ej utvärderat.

## Inbäddning av filer i PDF:en


Vald metod: `attachfile`

Har problem med filnamn som inte håller sig till ASCII.

Andra möjligheter:
* `attachfile2`: Ska väl vara bättre, men liksom `attachfile` kolliderar den med nollindexeringen och workarounden fungerar bara med `attachfile`.
* `embedfile`: Samma upphovsman som `attachfile2`. Lägger till filer som bilagor till PDF:en, inte som länkar.
* `navigator`: Gör många PDF-relaterade saker, däribland bilagor och möjligen också länkar till inbäddade filer. Kolliderar med `tcolorbox`.

## Typsnitt


Vald metod: `fontspec`

Både `inputenc` och `fontenc` hör till en äldre metod.

## Språk


Vald metod: `polyglossia`

Ersätter `babel`.
