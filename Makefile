# Rebuild the generated pages from their Org sources, using the normal Emacs
# setup (~/.emacs.d/init.el), so output matches an interactive export.
#
#   make        rebuild whatever is out of date
#   make -B     force a full rebuild
#
# papers.el feeds both the homepage and the CV, so editing it rebuilds both.

EMACS  ?= /opt/homebrew/bin/emacs
BATCH   = $(EMACS) --batch -l $(HOME)/.emacs.d/init.el \
          --eval "(setq org-confirm-babel-evaluate nil)"

CV = documents/Santiago_Arango_Pineros_CV

.PHONY: all index cv
all: index cv
index: index.html
cv: $(CV).html $(CV).pdf

index.html: index.org papers.el
	$(BATCH) index.org -f org-html-export-to-html

$(CV).html: $(CV).org papers.el
	$(BATCH) $(CV).org -f org-html-export-to-html

$(CV).pdf: $(CV).org papers.el
	$(BATCH) $(CV).org -f org-latex-export-to-pdf
