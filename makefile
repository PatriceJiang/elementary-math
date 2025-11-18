
MAIN=elementary-math-note

TEXMAINDOC=elementary-math-note

TEMPFILECLASS=\
*.log \
*.aux \
*.blg \
*.bbl \
*.lof \
*.toc \
*.lot \
*.out \

LATEXCMD=xelatex

LATEXOPTIONS=-file-line-error   -interaction=nonstopmode

PDFVIEWER=evince


$(MAIN).pdf :
	$(LATEXCMD) $(LATEXOPTIONS) $(TEXMAINDOC)
	$(LATEXCMD) $(LATEXOPTIONS) $(TEXMAINDOC)
	
viewpdf : $(MAIN).pdf
	$(PDFVIEWER) $(MAIN).pdf &

clean :
	rm -f $(TEMPFILECLASS)
