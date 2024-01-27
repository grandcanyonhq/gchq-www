run:
	-rm -r docs
	bundle exec jekyll serve --livereload --host 0.0.0.0 --port 4001

build:
	-rm -r docs
	bundle exec jekyll build --destination docs/

.PHONY: run build