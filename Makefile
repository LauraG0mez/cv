# rules
# -----

all: fr-short en-short

fr-short: cv-fr-short.tex
	latexmk -xelatex -bibtex $<
	@echo ""
	@echo "done"

en-short: cv-en-short.tex
	latexmk -xelatex -bibtex $<
	@echo ""
	@echo "done"

# dependencies
# ------------
cv-fr-short.tex: img/LG.png
cv-en-short.tex: img/LG.png

# WARNING
# ---------------------
clean:
	@echo ""
	@echo "Clean up files"
	@echo "--------------"
	rm -vf *.pdf *.aux *.log *.fls *.fdb_latexmk *.bbl *.out *.blg *.synctex.gz *.xdv
	ls -lrth
	@echo ""
	@echo "done"
