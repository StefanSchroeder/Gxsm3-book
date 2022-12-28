#
# This file is part of Gxsm
#

.PHONY: html markdown pages

HTMLDIR = html

INSTALLDIR = /usr/local/share/gxsm

# latex to html converter:
LATEX = latex
PDFLATEX = pdflatex
LATEX2HTML = latex2html
LATEX2HTML_OPT = -split +1 -local_icons  -antialias -antialias_text -dir $(HTMLDIR) -prefix xsm-

ALLTEXFILES =
ALLEPSFILES = 
ALLPNGFILES = 

ALLTEXSRCS = $(ALLTEXFILES) 

#------------------------------------------------------------------------

all: pdfmanual 

prepare:
	bash helpers/bootstrap_buildenvironment.sh

pdfmanual:
	bash helpers/make-gxsm-manual.sh

install: 
	install -o root -g root src/Gxsm-3.0-Manual.pdf $(INSTALLDIR)

clean:
	pushd src && rm -rf *.dvi *.log *.aux *.idx *.ilg *.ind *.bbl *.bcf *.blg *.out *.toc *.bak latex/*.aux && popd

html:
	latex2html -local_icons -antialias -antialias_text -mkdir -dir html -split +1 -prefix gxsm- Gxsm-3.0-Manual

view:
	xdg-open src/Gxsm-3.0-Manual.pdf

markdown:
	pandoc --number-sections --pdf-engine pdflatex --toc --include-in-header markdown/titlesec.tex -o test.pdf \
		mkdocs/docs/*.md 
pages:
	mkdocs build
