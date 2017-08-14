all: legion.v legion.tex

legion.v: legion.ott
	ott legion.ott -o legion.v -picky_multiple_parses true

legion.tex: legion.ott
	ott legion.ott -o correctnesshpc/legion.tex -picky_multiple_parses true

