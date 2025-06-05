#!/bin/sh

# run script to prepare images for sorting
docker run \
  --mount type=bind,src=$(pwd)/import,dst=/source \
  --mount type=bind,src=$(pwd)/process-images.py,dst=/process-images.py \
  --rm -it ghcr.io/matthiasbalke/imagemagick:0.2.0-7.1.1.13-r1

docker run \
  --mount type=bind,src=$(pwd)/import,dst=/source \
  --mount type=bind,src=$(pwd),dst=/target \
  --rm -it ghcr.io/matthiasbalke/sortphotos:0.1.1 \
  --test --recursive --sort %Y-%m-%d /source /target
