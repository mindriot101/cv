STUB := cv_simon_walker

all: help

help:
	@echo "Commands: build, watch, clean, push"

build:
	latexmk --pdf $(STUB)

watch:
	latexmk --pdf --pvc $(STUB)

clean:
	latexmk -C $(STUB)

push:
	git push origin master
	git push overleaf master

.PHONY: build watch clean push
