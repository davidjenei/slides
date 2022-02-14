DOCS=slides.pdf

PANDOC=/usr/bin/pandoc
WATCHMAN=/usr/bin/watchman-make
RM=/bin/rm

PANDOC_OPTIONS= \
	-t beamer

slides.pdf : slides.md beamerthememinimal.sty
	$(PANDOC) $(PANDOC_OPTIONS) $< -o $@

watch :
	$(WATCHMAN) -p slides.md -t $(DOCS)

.PHONY: all clean

all : $(DOCS)

clean:
	- $(RM) $(DOCS)

