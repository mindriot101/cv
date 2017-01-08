STUB := cv_simon_walker

all: help

help:
	@echo "Commands: build, watch, clean"

build:
	latexmk --pdf $(STUB)

watch:
	latexmk --pdf --pvc $(STUB)

clean:
	latexmk -C $(STUB)

.PHONY: build watch clean
