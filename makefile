
all : index.html pdf

index.html : src/index.adoc src/user-guide.adoc
	asciidoctor -b html src/index.adoc -o index.html

pdf : mindboard-2-beta-user-guide.pdf
mindboard-2-beta-user-guide.pdf:
	asciidoctor -r asciidoctor-pdf -b pdf src/index-pdf.adoc -o $@

clean :
	#rm -f index.pdf index.html
