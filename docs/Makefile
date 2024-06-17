.PHONY: adddata plot html pdf clean

ASCIIDOCTOR ?= asciidoctor
ASCIIDOCTORPDF ?= asciidoctorpdf

html: plot
	$(ASCIIDOCTOR) index.adoc
pdf:
	$(ASCIIDOCTORPDF) -a scripts=cjk -a pdf-theme=default-with-fallback-font index.adoc

adddata:
	./gendata
plot: adddata
	Rscript stat.R

clean:
	rm -f *.png *.svg plot.html