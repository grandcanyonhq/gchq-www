run:
	bundle exec jekyll serve --livereload --host 0.0.0.0 --port 4001

build:
	bundle exec jekyll build

.PHONY: run build