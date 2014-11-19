all:
	cp src/* template
	cd template/ && \
	pandoc -t html5 \
		--template=template-revealjs.html --standalone --section-divs \
		--variable theme="beige" \
		--variable slideNumber=true \
		--variable parallaxBackgroundImage="'https://s3.amazonaws.com/hakim-static/reveal-js/reveal-parallax-1.jpg'" \
		--variable transition="linear" \
		../src/presentation.md \
		-o presentation.html
	cp template/presentation.html template/index.html

serve: all
	cd template/ && cp presentation.html index.html && grunt serve


clean:
	@rm build/ -rf
