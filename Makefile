DOCUMENT=mall

$(DOCUMENT).pdf : $(DOCUMENT).tex
	xelatex "$<"

.PHONY : clean
clean :
	rm -rf $(DOCUMENT).aux $(DOCUMENT).log $(DOCUMENT).pdf $(DOCUMENT).out texput.log
