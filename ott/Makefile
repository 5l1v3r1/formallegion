all: legion.v legion.tex legion.pdf

OTT=~/src/ott/src/ott

legion.v: legion.ott
	$(OTT) legion.ott -o legion.v -picky_multiple_parses true

legion.tex: legion.ott
	$(OTT) legion.ott -o correctnesshpc/legion.tex -picky_multiple_parses true

util.vo: util.v
	coqc util.v

syntax.vo: syntax.v
	coqc syntax.v
semantics.vo: util.vo syntax.vo
	coqc semantics.v

#legion.vo: legion.v semantics.vo
#	coqc legion.v

legion.pdf: correctnesshpc/legion.tex legion.ott
	pdflatex correctnesshpc/legion.tex

clean:
	rm legion.pdf
	rm *.vo
