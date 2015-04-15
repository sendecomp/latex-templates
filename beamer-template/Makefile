SLIDES  := Slides
HANDOUTS := Handouts

all: slides.pdf handouts.pdf

clean:
	-rm *aux *bbl *toc *snm *log *nav *blg *out

slides.aux:
	pdflatex $(SLIDES).tex

slides.pdf: slides.aux slides.bbl
	pdflatex $(SLIDES).tex
	pdflatex $(SLIDES).tex
	pdflatex $(SLIDES).tex

slides.bbl:
	bibtex $(SLIDES)

handouts.aux:
	pdflatex $(HANDOUTS).tex

handouts.bbl:
	bibtex $(HANDOUTS)

handouts.pdf: handouts.aux handouts.bbl
	pdflatex $(HANDOUTS).tex
	pdflatex $(HANDOUTS).tex
	pdflatex $(HANDOUTS).tex
