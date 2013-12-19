all: cv.pdf

cv.pdf: cv.tex
	latexmk --pdf cv

clean:
	@rm *.pdf

.PHONEY: clean
