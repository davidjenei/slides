DOCS=slides.pdf

PANDOC=/usr/bin/pandoc
RM=/bin/rm

PANDOC_OPTIONS= \
	-t beamer

slides.pdf : slides.md beamerthememinimal.sty
	$(PANDOC) $(PANDOC_OPTIONS) $< -o $@

.PHONY: all clean

all : $(DOCS)

clean:
	- $(RM) $(DOCS)

