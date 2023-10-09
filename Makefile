PDF=slides.pdf
MD=slides.md
THEME=beamerthememinimal.sty

PANDOC=/usr/bin/pandoc
DIA=/usr/bin/dia
WATCHMAN=/usr/bin/watchman-make

PANDOC_OPTIONS= \
	-t beamer \
	--include-in-header=texheader.tex
#	--slide-level=2

$(PDF): $(MD) $(THEME) diagram.eps
	$(PANDOC) $(PANDOC_OPTIONS) $< -o $@

diagram.eps : diagrams/example.dia
	$(DIA) -e $@ -t eps $<

.PHONY: watch
watch :
	$(WATCHMAN) -p $(MD) $(THEME) -t $(DOCS)

.PHONY: all
all : $(PDF)

.PHONY: clean
clean:
	- $(RM) $(PDF)

.PHONY: install
install: all
	rsync -avzh ${PDF} davidjenei.com:~/static/shared


