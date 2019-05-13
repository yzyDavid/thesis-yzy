default: xelatex-pdf

latexmk-pdf: content/* config/* figure/* pages/* reference/*
	latexmk -xelatex -outdir=out zjuthesis.tex

xelatex-pdf:  content/* config/* figure/* pages/* reference/*
	xelatex -output-directory=out zjuthesis.tex

clean:

wc: wc-final

wc-trans:
	texcount content/proposal/translation/translation.tex

wc-proposal:
	texcount content/proposal/proposal/*

wc-midcheck:
	texcount content/proposal/midcheck/midcheck.tex

wc-final:
	texcount content/final/* content/final/introduction/* content/final/body/*

.PHONY: all clean wc wc-trans wc-proposal