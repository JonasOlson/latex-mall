DOCUMENT=mall

$(DOCUMENT).pdf : $(DOCUMENT).tex listings/duff.c Smithdiagram.svg bänk.jpeg
	latexmk -pdflatex="lualatex --halt-on-error --shell-escape %O %S" -pdf -dvi- -ps- "$<"

.PHONY : clean
clean :
	rm -rf $(DOCUMENT).aux $(DOCUMENT).log $(DOCUMENT).pdf $(DOCUMENT).out $(DOCUMENT).fls $(DOCUMENT).listing $(DOCUMENT).fdb_latexmk texput.log Smithdiagram.pdf Smithdiagram.pdf_tex _minted-$(DOCUMENT) svg-inkscape
