@echo off

REM run script to prepare images for sorting
docker run ^
  --mount type=bind,src=%~dp0\import,dst=/source ^
  --mount type=bind,src=%~dp0\process-images.sh,dst=/process-images.sh ^
  --rm -it ghcr.io/matthiasbalke/imagemagick:0.1.1-7.1.1.13-r1

REM sort images
docker run ^
  --mount type=bind,src=%~dp0\import,dst=/source ^
  --mount type=bind,src=%~dp0,dst=/target ^
  --rm -it ghcr.io/matthiasbalke/sortphotos:0.1.1 ^
  --test --recursive --sort %%Y-%%m-%%d /source /target

pause
