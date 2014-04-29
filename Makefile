all:	pdf/costan-thg-prop.pdf pdf/costan-thg-prop-title.pdf

tmp/:
	mkdir -p tmp/

pdf/:
	mkdir -p pdf/

pdf/costan-thg-prop.pdf: $(wildcard src/*) $(wildcard src/contents/*) tmp/ pdf/
	#BIBINPUTS=../tmp rubber --verbose --force --into=tmp/ --pdf src/main.tex
	latexmk -bibtex -cd -f -pdf -aux-directory=../tmp -output-directory=../tmp src/main.tex
	mv tmp/main.pdf pdf/costan-thg-prop.pdf

pdf/costan-thg-prop-title.pdf: $(wildcard src/*) $(wildcard src/contents/*) tmp/ pdf/
	#BIBINPUTS=../tmp rubber --verbose --force --into=tmp/ --pdf src/main.tex
	latexmk -bibtex -cd -f -pdf -aux-directory=../tmp -output-directory=../tmp src/title_page.tex
	mv tmp/title_page.pdf pdf/costan-thg-prop-title.pdf

clean:
	rm -rf tmp pdf/*
