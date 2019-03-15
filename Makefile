all: pdf

pdf: content/* config/* figure/* pages/* reference/*
	latexmk -xelatex -outdir=out zjuthesis.tex

clean:

.PHONY: all clean