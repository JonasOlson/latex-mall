DOCUMENT_NAME=mall

OUTPUT_DIR=output
DOCUMENT=$(OUTPUT_DIR)/$(DOCUMENT_NAME).pdf

$(OUTPUT_DIR)/$(DOCUMENT_NAME).pdf : main.tex listings/duff.c Smithdiagram.svg bänk.jpeg | $(OUTPUT_DIR)
	latexmk -pdflatex="lualatex --halt-on-error --shell-escape %O %S" -jobname=$(OUTPUT_DIR)/$(DOCUMENT_NAME) -pdf -dvi- -ps- "$<"

$(OUTPUT_DIR):
	mkdir -p "$@"

.PHONY: open
open: $(DOCUMENT)
	xdg-open "$<"

.PHONY : clean
clean :
	rm -rf $(OUTPUT_DIR)
