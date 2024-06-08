.PHONY: html pdf clean

html:
	asciidoctor index.adoc
pdf:
	asciidoctor-pdf -a scripts=cjk -a pdf-theme=default-with-fallback-font index.adoc