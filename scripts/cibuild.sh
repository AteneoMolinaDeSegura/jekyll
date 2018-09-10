#!/usr/bin/env bash
set -e # halt script on error

JEKYLL_ENV=production bundle exec jekyll build

compressJpgFile() {
  jpegoptim --max=80 --strip-all --all-progressive -f --dest=../posts/ $1
  if [ $? -ne 0 ]; then
    cp $1 ../posts
  fi
}

compressPngFile() {
  pngquant --quality=65-80 --output ../posts/$1 $1
  if [ $? -ne 0 ]; then
    cp $1 ../posts
  fi
}
export -f compressJpgFile
export -f compressPngFile

if [ $? -eq 0 ]; then
  cd _site/images
  mv posts original_posts_images
  mkdir posts
  cd original_posts_images
  find '.' -name '*.png' -exec bash -c 'compressPngFile "{}"' \;
  find '.' -name '*.jpg' -exec bash -c 'compressJpgFile "{}"' \;
  find '.' -name '*.jpeg' -exec bash -c 'compressJpgFile "{}"' \;
  cd ..

  echo "Original posts images size:"
  du -sh original_posts_images
  echo "Final posts images size:"
  du -sh posts

  rm -rf original_posts_images
fi