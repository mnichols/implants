LOG = export DEBUG=implants:*

test:
	./node_modules/.bin/testem

verbose:
	$(eval LOG = export DEBUG=implants:*)

silent:
	LOG = unset DEBUG

clean:
	rm -rf specs.js

docs:
	pip install Pygments
	./node_modules/.bin/groc ./lib/**/*.js README.md
	pushd ./doc; python -m SimpleHTTPServer; popd

dev:
	./node_modules/.bin/gulp watch


.PHONY: test build dev compile-tests verbose silent docs