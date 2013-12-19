STUB=cv_simon_walker

all: ${STUB}.pdf

${STUB}.pdf: ${STUB}.tex
	latexmk --pdf ${STUB}

clean:
	latexmk -C ${STUB}
	@rm -f *.bbl
	@rm -f *.pdf

.PHONEY: clean
