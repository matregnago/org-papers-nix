NAME=sbc
ARCHIVE=replicable
ARCHIVE_FILES=$(NAME).org Makefile figures/*

# Run inside `nix develop` so that emacs (with org-ref) and TeX Live are available.
all: $(NAME).pdf

%.tex: %.org export.el
	emacs --batch --load export.el

%.pdf: %.tex
	latexmk -pdf -interaction=nonstopmode $<

$(ARCHIVE).tgz: $(ARCHIVE_FILES)
	tar --xform "s|^|$(ARCHIVE)/|" -zcf $@ $^

nix:
	nix build .

clean:
	latexmk -c $(NAME).tex

distclean: clean
	rm -f $(NAME).tex $(NAME).pdf refs.bib

.PHONY: all nix clean distclean
