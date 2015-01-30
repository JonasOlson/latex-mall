DOCUMENT=mall

$(DOCUMENT).pdf : $(DOCUMENT).tex duff.c Smithdiagram.svg bänk.jpeg
	lualatex --shell-escape "$<"

.PHONY : clean
clean :
	rm -rf $(DOCUMENT).aux $(DOCUMENT).log $(DOCUMENT).pdf $(DOCUMENT).out texput.log Smithdiagram.pdf Smithdiagram.pdf_tex
