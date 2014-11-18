all:
	cp src/* template
	cd template/ && \
	pandoc -t html5 \
		--template=template-revealjs.html --standalone --section-divs \
		--variable theme="beige" \
		--variable transition="linear" \
		../src/presentation.md \
		-o presentation.html

serve: all
	cd template/ && cp presentation.html index.html && grunt serve


clean:
	@rm build/ -rf
