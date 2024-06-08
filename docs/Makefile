.PHONY: adddata plot html pdf clean

html: plot
	asciidoctor index.adoc
pdf:
	asciidoctor-pdf -a scripts=cjk -a pdf-theme=default-with-fallback-font index.adoc

adddata:
	./gendata
plot: adddata
	Rscript stat.R

clean:
	rm -f *.png *.svg plot.html