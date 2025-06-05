#!/bin/sh

# run script to prepare images for sorting
docker run \
  --mount type=bind,src=$(pwd),dst=/source \
  --mount type=bind,src=$(pwd)/process-images.sh,dst=/process-images.sh \
  --rm -it ghcr.io/matthiasbalke/imagemagick:0.1.1-7.1.1.13-r1

# sort images
docker run \
  --mount type=bind,src=$(pwd)/import,dst=/source \
  --mount type=bind,src=$(pwd),dst=/target \
  --rm -it ghcr.io/matthiasbalke/sortphotos:0.1.1 \
  --test --recursive --sort %Y-%m-%d /source /target
