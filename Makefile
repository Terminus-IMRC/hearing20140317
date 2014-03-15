all: hearing26.dvi

hearing26.dvi: hearing26.tex
	latexmk -latex=platex -dvi $<

hearing26.pdf: hearing26.dvi
	dvipdfmx -l $<

.PHONY: clean
clean:
	$(RM) hearing26.pdf hearing26.dvi
	latexmk -C

mail: hearing26.pdf
	echo q | metome.py -a $<
