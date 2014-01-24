all:	pdf/costan-thg-prop.pdf

tmp/:
	mkdir -p tmp/

pdf/:
	mkdir -p pdf/

pdf/costan-thg-prop.pdf: $(wildcard src/*) $(wildcard src/contents/*) tmp/ pdf/
	#BIBINPUTS=../tmp rubber --verbose --force --into=tmp/ --pdf src/main.tex
	latexmk -bibtex -cd -f -pdf -aux-directory=../tmp -output-directory=../tmp src/main.tex
	mv tmp/main.pdf pdf/costan-thg-prop.pdf

clean:
	rm -rf tmp pdf/*
