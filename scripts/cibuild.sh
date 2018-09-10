#!/usr/bin/env bash
set -e # halt script on error

JEKYLL_ENV=production bundle exec jekyll build
if [ $? -eq 0 ]; then
  cd _site/images
  mv posts original_posts_images
  mkdir posts
  cd original_posts_images
  find '.' -name '*.png' -exec pngquant --quality=65-80 --output ../posts/{} {} \;
  find '.' -name '*.jpg' -exec jpegoptim --strip-all --all-progressive -f --dest=../posts/ {} \;
  find '.' -name '*.jpeg' -exec jpegoptim --strip-all --all-progressive -f --dest=../posts/ {} \;
  cd ..

  echo "Original posts images size:"
  du -sh original_posts_images
  echo "Final posts images size:"
  du -sh posts

  rm -rf original_posts_images
fi