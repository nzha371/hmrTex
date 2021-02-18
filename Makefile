all: Project-sw.pdf

Project-sw.pdf: Project-sw.tex
	pdflatex $^

Project-sw.tex: Project-sw.Rnw
	Rscript -e 'library(knitr); knit("$^")'

clean:
	rm -f Project-sw.tex Project-sw.pdf

