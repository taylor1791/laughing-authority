.PHONY: clean
.PHONY: test
.PHONY: snapshot

clean:
	find . \( -name '*.log' -o -name '*.aux' -o -name '*.pdf' -o -name '*.png' \) \! -path '*/texmf/*' -delete

test:
	lualatex --output-directory bin src/dm-test.tex
	convert -density 300 -flatten bin/dm-test.pdf -strip bin/dm-test.png
	diff bin/dm-test.snapshot bin/dm-test.png

snapshot:
	cp bin/dm-test.png bin/dm-test.snapshot
