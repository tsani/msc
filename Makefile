.PHONY: all

all: main.pdf

%.pdf: %.tex prelude.tex figs/ chapters/
	pdflatex $(basename $<)
	bibtex $(basename $<)
	pdflatex $(basename $<)
	pdflatex $(basename $<)
