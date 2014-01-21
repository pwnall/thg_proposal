all:	pdf/costan-thg-prop.pdf

tmp/:
	mkdir -p tmp/

pdf/:
	mkdir -p pdf/

pdf/costan-thg-prop.pdf: $(wildcard src/*) $(wildcard src/contents/*) tmp/ pdf/
	rubber --into=tmp/ --pdf src/main.tex
	mv tmp/main.pdf pdf/costan-thg-prop.pdf

clean:
	rm -rf tmp pdf/*

