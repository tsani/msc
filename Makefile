.PHONY: all

all: main.pdf

%.pdf: %.tex prelude.tex extra/ figs/ code/ sections/
	pdflatex $(basename $<)
	bibtex $(basename $<)
	pdflatex $(basename $<)
	pdflatex $(basename $<)
