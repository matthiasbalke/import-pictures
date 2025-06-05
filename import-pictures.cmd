@echo off

REM run script to prepare images for sorting
docker run ^
  --mount type=bind,src=%~dp0\import,dst=/source ^
  --mount type=bind,src=%~dp0\process-images.py,dst=/process-images.py ^
  --rm -it ghcr.io/matthiasbalke/imagemagick:0.2.0-7.1.1.13-r1

REM sort images
docker run ^
  --mount type=bind,src=%~dp0\import,dst=/source ^
  --mount type=bind,src=%~dp0,dst=/target ^
  --rm -it ghcr.io/matthiasbalke/sortphotos:0.1.1 ^
  --test --recursive --sort %%Y-%%m-%%d /source /target

pause
