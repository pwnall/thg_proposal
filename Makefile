all:	pdf/costan12police.pdf

tmp/:
	mkdir -p tmp/

pdf/:
	mkdir -p pdf/

pdf/costan12police.pdf: $(wildcard src/*) $(wildcard src/contents/*) tmp/ pdf/
	rubber --into=tmp/ --pdf src/main.tex
	mv tmp/main.pdf pdf/costan12police.pdf

clean:
	rm -rf tmp pdf/*

