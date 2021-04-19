DOCUMENT=mall
OUTPUT_DIR=output

$(OUTPUT_DIR)/$(DOCUMENT).pdf : $(DOCUMENT).tex listings/duff.c Smithdiagram.svg bänk.jpeg | $(OUTPUT_DIR)
	latexmk -pdflatex="lualatex --halt-on-error --shell-escape %O %S" -jobname=$(OUTPUT_DIR)/$(DOCUMENT) -pdf -dvi- -ps- "$<"

$(OUTPUT_DIR):
	mkdir -p "$@"

.PHONY : clean
clean :
	rm -rf $(OUTPUT_DIR)
