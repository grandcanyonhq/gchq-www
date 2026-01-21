#!/bin/bash
set -e

# Search for and install vips
echo "Searching for vips packages..."
dnf search vips || true
dnf install -y vips vips-devel libvips libvips-devel || echo "vips packages not found"

# Run Jekyll build
JEKYLL_ENV=production bundle exec jekyll build --config _config.yml,_config_production.yml
