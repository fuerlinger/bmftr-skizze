

all : skizze.tex
	pdflatex skizze.tex
	bibtex skizze
	pdflatex skizze.tex
	pdflatex skizze.tex

karl : all
	cp skizze.pdf ~/Dropbox

clean :
	rm -f *.aux
	rm -f *.log
	rm -f *.bbl
	rm -f *.bcf
	rm -f *.blg
	rm -f *~
	rm -f ./skizze.run.xml
	rm -f ./skizze.pdf
