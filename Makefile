.PHONY: all clean run test
OS:=$(shell uname -s)
DIRS=test
TARGETS=$(patsubst %,%/index.html,$(DIRS))
DOTFILES=$(foreach xdir,$(DIRS),$(wildcard $(xdir)/*.dot))
PNGFILES=$(patsubst %.dot,%.png,$(DOTFILES))

all: $(TARGETS) $(PNGFILES)

# $(TARGETS): Makefile 

%.html: m4/template.m4 %.html.m4 m4/template.html
	m4 --debug -Im4 -DDATE="`date +'%m/%d/%Y'`" -P $^ > $@

%.png: %.dot
	dot -Tpng $< > $@.tmp && mv $@.tmp $@

TEST=test/index.html test/graph.png
ifeq "$(OS)" "Darwin"
run: $(TEST) 
	cat $<
	open $<
else
run: $(TEST)
	cat $<
	firefox $<
endif

clean:
	rm -f $(TARGETS)
