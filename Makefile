default: xelatex-pdf

latexmk-pdf: content/* config/* figure/* pages/* reference/*
	latexmk -xelatex -outdir=out zjuthesis.tex

xelatex-pdf:  content/* config/* figure/* pages/* reference/*
	xelatex -output-directory=out zjuthesis.tex

clean:

wc: wc-trans wc-proposal

wc-trans:
	texcount content/proposal/translation/translation.tex

wc-proposal:
	texcount content/proposal/proposal/*

.PHONY: all clean wc wc-trans wc-proposal