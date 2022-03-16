DOCS=slides.pdf
THEME=beamerthememinimal.sty

PANDOC=/usr/bin/pandoc
DIA=/usr/bin/dia
WATCHMAN=/usr/bin/watchman-make
RM=/bin/rm

PANDOC_OPTIONS= \
	-t beamer \
	--include-in-header=texheader.tex
#	--slide-level=2

slides.pdf : slides.md $(THEME) diagram.eps
	$(PANDOC) $(PANDOC_OPTIONS) $< -o $@

diagram.eps : diagram.dia
	$(DIA) -e $@ -t eps $<

watch :
	$(WATCHMAN) -p slides.md $(THEME) -t $(DOCS)

.PHONY: all clean

all : $(DOCS)

clean:
	- $(RM) $(DOCS)

