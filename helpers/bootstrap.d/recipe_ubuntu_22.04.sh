
echo "This is the recipe for Ubuntu 22.04 LTS."

apt -y install texlive-latex-recommended \
	texlive-latex-base \
	texlive-fonts-recommended \
	texlive-latex-extra \
	texlive-fonts-extra \
	texlive-bibtex-extra \
	latex2html \
	make \
	latexmk \
	biber
	
apt -y install pandoc mkdocs mkdocs-nature \
	mkdocs-autorefs mkdocs-bootstrap

