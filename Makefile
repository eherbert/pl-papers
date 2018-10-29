
# LaTeX Makefile
# https://gist.github.com/hhanh/8389805

FILE=main

make:
	xelatex -shell-escape $(FILE).tex
	bibtex $(FILE).aux
	xelatex -shell-escape $(FILE).tex
	xelatex -shell-escape $(FILE).tex

clean:
	rm -rf *.blg 
	rm -rf *.out 
	rm -rf *.bbl 
	rm -rf *.log
	rm -rf *.ind
	rm -rf *.ilg
	rm -rf *.lot
	rm -rf *.lof
	rm -rf *.ind
	rm -rf *.idx
	rm -rf *.aux
	rm -rf *.toc
	rm -rf *.4ct
	rm -rf *.4tc
	rm -rf *.idv
	rm -rf *.lg
	rm -rf *.tmp

html:
	htlatex $(FILE).tex

read:
	evince $(FILE).pdf &
