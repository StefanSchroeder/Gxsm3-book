#
# This file is part of Gxsm
#

INSTALLDIR=/usr/local/share/gxsm3

.PHONY: html markdown pages pdfmanual

all: pdfmanual 

prepare:
	bash helpers/bootstrap_buildenvironment.sh

pdfmanual:
	bash helpers/make-gxsm-manual.sh

install: 
	install -o root -g root Gxsm-3.0-Manual.pdf $(INSTALLDIR)

clean:
	pushd src && rm -rf *.dvi *.log *.aux *.idx *.ilg *.ind *.bbl *.bcf *.blg *.out *.toc *.bak latex/*.aux && popd

#html:
#	latex2html -local_icons -antialias -antialias_text -mkdir -dir html -split +1 -prefix gxsm- Gxsm-3.0-Manual

view:
	xdg-open src/Gxsm-3.0-Manual.pdf

markdown:
	pandoc --number-sections --pdf-engine pdflatex --toc --include-in-header markdown/titlesec.tex -o test.pdf \
		docs/*Gxsm*.md 
	ls test.pdf

pages:
	mkdocs build

