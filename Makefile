SCRFILE = part1.tex

.PHONY: build clean

build:	$(subst .tex,.pdf,$(SCRFILE))

%.pdf:	%.tex
	pdflatex -synctex=1 -shell-escape $<

clean:
	rm $(subst .tex,.aux,$(SCRFILE)) || true
	rm $(subst .tex,.log,$(SCRFILE)) || true
	rm $(subst .tex,.out,$(SCRFILE)) || true
	rm $(subst .tex,.pdf,$(SCRFILE)) || true
	rm $(subst .tex,.synctex,$(SCRFILE)) || true
	rm $(subst .tex,.synctex.gz,$(SCRFILE)) || true