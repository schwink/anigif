anigif
======

Scripts for making animated gifs

Process goes something like this:
1. Put your file at in.mp4
2. Convert some/all of it to png (Protip: don't convert every frame if you don't need to)
3. Figure out what frames you need
4. Update the Makefile to convert those frames to gif, and then to splice them into an animated gif

I use this on debian with ImageMagick 6.6.9 (deps: imagemagick)

This is helpful for understanding gif image quality:
http://www.imagemagick.org/Usage/quantize/
