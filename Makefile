lint:
	jshint index.js

build: components index.js pager.css
	@component build --dev

components: component.json
	@component install --dev

clean:
	rm -fr build components

.PHONY: clean lint
