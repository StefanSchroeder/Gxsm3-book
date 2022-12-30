
echo "This is the recipe for Ubuntu 22.04 LTS."
echo "This is the foundation for the online version."

apt update
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
	mkdocs-bootstrap \
	mkdocs-material-extensions

pip install mkdocs-windmill
