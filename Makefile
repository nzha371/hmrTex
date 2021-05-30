all: 
	make clean
	make Project-sw.pdf

Project-sw.pdf: Project-sw.tex Project.bib
	pdflatex $< && bibtex $(<:.tex=) && pdflatex $< && pdflatex $<

Project-sw.tex: Project-sw.Rnw
	Rscript -e 'library(knitr); knit("$^")'

clean:
	rm -f Project-sw.tex Project-sw.pdf Project-sw.aux \
	      Project-sw.bbl Project-sw.blg Project-sw.log Project-sw.toc


