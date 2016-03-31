DOCUMENT=mall

$(DOCUMENT).pdf : $(DOCUMENT).tex listings/duff.c Smithdiagram.svg bänk.jpeg
	lualatex --shell-escape "$<"

.PHONY : minted
minted : minted.sty
minted.sty :
	wget https://raw.githubusercontent.com/gpoore/minted/5219a9c8db6d8b9c1e7c3aeab892ab0f6fc74308/source/minted.sty

.PHONY : clean
clean :
	rm -rf $(DOCUMENT).aux $(DOCUMENT).log $(DOCUMENT).pdf $(DOCUMENT).out texput.log Smithdiagram.pdf Smithdiagram.pdf_tex
