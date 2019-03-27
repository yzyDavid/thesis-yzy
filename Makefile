all: pdf

pdf: content/* config/* figure/* pages/* reference/*
	latexmk -xelatex -outdir=out zjuthesis.tex

clean:

wc:
	texcount content/proposal/translation/translation.tex
	texcount content/proposal/proposal/*

.PHONY: all clean wc