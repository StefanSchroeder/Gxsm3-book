all:
	pandoc --number-sections --pdf-engine pdflatex --toc --include-in-header titlesec.tex -o test.pdf \
		mkdocs/docs/*.md 

serve:
	cd mkdocs && mkdocs serve
