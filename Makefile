DOCUMENT=mall

$(DOCUMENT).pdf : $(DOCUMENT).tex duff.c
	lualatex --shell-escape "$<"

.PHONY : clean
clean :
	rm -rf $(DOCUMENT).aux $(DOCUMENT).log $(DOCUMENT).pdf $(DOCUMENT).out texput.log
