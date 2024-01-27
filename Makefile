run:
	bundle exec jekyll serve --livereload --host 0.0.0.0 --port 4001

build:
	JEKYLL_ENV=production bundle exec jekyll build

.PHONY: run build