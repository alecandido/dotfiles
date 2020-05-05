# Run `watch -n1 make`

#files := $(shell xargs -a COMPILELIST.TXT)
files := es14.md

es14.pdf: $(files)
	#pandoc $(files) --toc -f markdown -t html -c style.css -o $@
	pandoc -s $(files) -o $@
