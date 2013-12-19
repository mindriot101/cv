all: cv.pdf

cv.pdf: cv.tex
	latexmk --pdf cv

clean:
	latexmk -C cv
	@rm -f *.bbl
	@rm -f *.pdf

.PHONEY: clean
