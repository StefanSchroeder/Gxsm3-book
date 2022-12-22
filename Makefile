#
# DSP Project Documentation Makefile
#
# $Header: ~/gxsm3-manual/Makefile,v 1.5 2017-02-05 stm Exp $
#
#

.PHONY: html

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

pdfmanual:
	./make-gxsm-manual.sh

install: 
	if !(test -f "Gxsm-3.0-Manual.pdf"); then ./make-gxsm-manual.sh; fi;
	install -o root -g root Gxsm-3.0-Manual.pdf $(INSTALLDIR)

clean:
	rm -rf *.dvi *.log *.aux *.idx *.ilg *.ind *.bbl *.bcf *.blg *.out *.toc *.bak latex/*.aux

html:
	latex2html -local_icons -antialias -antialias_text -mkdir -dir html -split +1 -prefix gxsm- Gxsm-3.0-Manual

