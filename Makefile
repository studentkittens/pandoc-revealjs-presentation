all:
	cd template/ && \
	pandoc -t html5 \
		--template=template-revealjs.html --standalone --section-divs \
		--variable theme="blood" \
		--variable transition="slide" \
		../src/presentation.md \
		-o presentation.html

clean:
	@rm build/ -rf
