LDIR =./lib
SAXON=$(LDIR)/saxon-he-10.6.jar
TEMPLATE=$(LDIR)/page-template.xsl

sources := $(wildcard *.content)
targets := $(patsubst %.content, %.html, $(sources))

.PHONY:	all clean

%.html:	%.content
	mkdir -p ./dist
	java -cp $(SAXON) net.sf.saxon.Transform -s:$< -xsl:$(TEMPLATE) -o:dist/$@

all:	$(targets)

clean:
	rm ./dist/*.html
