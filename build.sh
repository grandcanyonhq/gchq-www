#!/bin/bash
set -e

# Images are pre-generated and committed, so no vips needed
JEKYLL_ENV=production bundle exec jekyll build --config _config.yml,_config_production.yml
