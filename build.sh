#!/bin/bash
set -e

# Install vips
dnf install -y vips-devel || dnf install -y ImageMagick

# Run Jekyll build
JEKYLL_ENV=production bundle exec jekyll build --config _config.yml,_config_production.yml
